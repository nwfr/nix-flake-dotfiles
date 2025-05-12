return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {},
        lua_ls = {
          settings = {
            Lua = {
              runtime = {
                -- Tell the language server which version of Lua you're
                -- using (most likely LuaJIT in the case of Neovim)
                version = "LuaJIT",
              },
              diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "vim" },
              },
              workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              -- Do not send telemetry data containing a randomized but unique identifier
              telemetry = {
                enable = false,
              },
            },
          },
        },
        bashls = {},
        cssls = {},
        cssmodules_ls = {},
        emmet_ls = {
          filetypes = {
            "html",
            "typescriptreact",
            "javascriptreact",
            "css",
            "sass",
            "scss",
            "less",
            "twig",
          },
          init_options = {
            html = {
              options = {
                -- For possible options, see:
                -- https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
              },
            },
          },
        },
        eslint = {},
        html = {},
        jsonls = {},
        tsserver = {},
        vimls = {},
        yamlls = {},
        -- phpactor = {
        --   enabled = true,
        --   options = {},
        -- },
        diagnosticls = {},
        dockerls = {},
        sqlls = {},
        gopls = {
          filetypes = { "go", "gomod", "gowork", "gotmpl" },
        },
        alejandra = {},
      },
    },
  },
}
