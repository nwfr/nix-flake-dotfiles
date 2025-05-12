-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local n00rGroup = augroup("n00r", {})

autocmd({ "BufWritePre" }, {
  group = n00rGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- When shortcut files are updated, renew bash and lf configs with new material:
-- vim.cmd([[ autocmd BufWritePost bm-files,bm-dirs !shortcuts ]])
autocmd({ "BufWritePost" }, {
  group = n00rGroup,
  pattern = "bm-files,bm-dirs",
  command = [[!shortcuts]],
})

-- Ensure files are read as what I want:
autocmd({ "BufRead", "BufNewFile" }, {
  group = n00rGroup,
  pattern = "/tmp/calcurse*,~/.config/calcurse/notes/*,~/.local/share/calcurse/notes/*",
  command = [[set filetype=markdown]],
})
autocmd({ "BufRead", "BufNewFile" }, {
  group = n00rGroup,
  pattern = "*.ms,*.me,*.mom,*.man",
  command = [[set filetype=groff]],
})
autocmd({ "BufRead", "BufNewFile" }, {
  group = n00rGroup,
  pattern = "*.tex",
  command = [[set filetype=tex]],
})

-- vim.cmd([[ autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff ]])
-- vim.cmd([[ autocmd BufRead,BufNewFile *.tex set filetype=tex ]])

-- Disables automatic commenting on newline:
-- vim.cmd([[ autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o ]])
autocmd({ "FileType" }, {
  group = n00rGroup,
  pattern = "*",
  command = [[setlocal formatoptions-=c formatoptions-=r formatoptions-=o]],
})

local format_sync_grp = augroup("goimports", {})
autocmd("BufWritePre", {
  group = format_sync_grp,
  pattern = "*.go",
  callback = function()
    require("go.format").goimports()
  end,
})

-- Run xrdb whenever Xdefaults or Xresources are updated.
-- vim.cmd([[ autocmd BufRead,BufNewFile Xresources,Xdefaults,xresources,xdefaults set filetype=xdefaults ]])
-- vim.cmd([[ autocmd BufWritePost Xresources,Xdefaults,xresources,xdefaults !xrdb % ]])

-- Recompile dwm,dwmblocks, st and dmenu on config edit.
-- vim.cmd([[ autocmd BufWritePost ~/.local/src/dwm/config.h !cd ~/.local/src/dwm/; sudo make install ]])
-- vim.cmd([[ autocmd BufWritePost ~/.local/src/st/config.h !cd ~/.local/src/st/; sudo make install ]])
-- vim.cmd([[ autocmd BufWritePost ~/.local/src/dmenu/config.h !cd ~/.local/src/dmenu/; sudo make install ]])
-- vim.cmd([[ autocmd BufWritePost ~/.local/src/dwmblocks/config.h !cd ~/.local/src/dwmblocks/; sudo make install && { killall -q dwmblocks;setsid -f dwmblocks } ]])
