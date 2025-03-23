-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt
-- numbered lines & relative number
o.number = true
o.relativenumber = true

-- highlight the current line
o.cursorline = true

-- tab
-- insert 4 spaces for a tab
o.tabstop = 4
o.softtabstop = 4
-- the number of spaces inserted for each indentation
o.shiftwidth = 4
-- convert tabs to spaces
o.expandtab = true

-- Indenting -- Do smart autoindenting when starting a new line
o.smartindent = true
-- Enable break indent
o.breakindent = true

-- Search
o.hlsearch = false
o.incsearch = true
-- Case insensitive searching UNLESS /C or capital in search
o.ignorecase = true
o.smartcase = true

-- Wrap
o.wrap = false

-- Disable swap & backup and use undotree
o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.local/state/nvim/undodir"
o.undofile = true

-- Support colorscheme
o.termguicolors = true

-- Allways keep 8 lines on the top and the bottom when scrolling
o.scrolloff = 8
-- Allways keep 8 colomns on the right scrolling
o.sidescrolloff = 8

-- add 2 columns on the left to display characters
vim.wo.signcolumn = "yes"

o.isfname:append("@-@")

-- If '50' milliseconds nothing is typed the swap file will be written to disk
o.updatetime = 50

-- Show colored column number 80
o.colorcolumn = "80"

-- Enable mouse mode
o.mouse = "a"

-- Enable title
o.title = true

-- Enable system clipboard
o.clipboard = { "unnamedplus", "unnamed" }

-- Disable showmode ('Insert' in the bottom)
o.showmode = false

-- Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
o.splitbelow = true
o.splitright = true

-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"

-- set viminfo='10,<100,:100,%,n~/.vim/.viminfo
-- where each parameter is preceded by an identifier:
-- 'q  : q, number of edited file remembered
-- <m  : m, number of lines saved for each register
-- :p  : p, number of history cmd lines remembered
-- %   : saves and restore the buffer list
-- n...: fully qualified path to the viminfo files (non-retardedote that this is a literal "n")"
o.viminfo = "'10,<100,:100,%,n~/.config/nvim/viminfo"
