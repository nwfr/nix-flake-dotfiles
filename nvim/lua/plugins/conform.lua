return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        jsonc = { "prettierd" },
        scss = { "prettierd" },
        sh = { "shfmt" },
        bash = { "shfmt", "shellharden" },
        markdown = { "cbfmt", "prettierd", "markdownlint" },
        php = { "phpcs", "phpcbf", "pretty-php", stop_after_first = true },
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd" },
        vue = { "prettierd" },
        yaml = { "yamlfix", "yamlfmt", "yamllint", stop_after_first = true },
        twig = { "twigcs" },
        go = { "goimports", "gofumpt" }, -- gofmt, gomodifytags
        templ = {
          "gofumpt",
          "templ",
          "injected",
        },
        nix = { "alejandra" },
        python = function(bufnr)
          if require("conform").get_formatter_info("ruff_format", bufnr).available then
            return { "ruff_format" }
          else
            return { "isort", "black" }
          end
        end,
        -- Use the "*" filetype to run formatters on all filetypes.
        ["*"] = { "codespell" },
        -- Use the "_" filetype to run formatters on filetypes that don't
        -- have other formatters configured.
        ["_"] = { "trim_whitespace" },
      },
    },
  },
}
