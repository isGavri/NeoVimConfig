--Set up of lazy nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("vim_config")
require("lazy").setup("plugins")
--Set up themes=
--vim.cmd.colorscheme("kanagawa")
--vim.cmd.colorscheme("kanagawa-dragon")
--vim.cmd.colorscheme("catppuccin")
vim.cmd.colorscheme("catppuccin-frappe")

