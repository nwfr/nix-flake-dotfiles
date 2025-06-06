-- add any tools you want to have installed below
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "flake8",
      "phpactor",
      "pretty-php",
      "intelephense",
      "bash-language-server",
      "css-lsp",
      "cssmodules-language-server",
      "emmet-ls",
      "eslint-lsp",
      "html-lsp",
      "json-lsp",
      "typescript-language-server",
      "vim-language-server",
      "yaml-language-server",
      "phpactor",
      "twigcs",
      "yamlfix",
      "yamllint",
      "yamlfmt",
      "gopls",
    },
  },
}
