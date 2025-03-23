return {
  "gbprod/phpactor.nvim",
  -- opts = {
  --   path = vim.fn.stdpath("data") .. "/mason/packages",
  --   branch = "master",
  --   bin = vim.fn.stdpath("data") .. "/mason/bin/phpactor",
  --   php_bin = "php",
  --   composer_bin = "composer",
  --   git_bin = "git",
  --   check_on_startup = "none",
  -- },
  lspconfig = {
    enabled = true,
    options = {},
  },
}
