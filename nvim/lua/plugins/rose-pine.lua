return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = true,
  opts = {
    style = "moon",
  },

  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
      transparent = true,
    },
  },
}
