vim.cmd("set number")
vim.cmd("set expandtab")
vim.cmd("set mouse=a")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
--vim.o.shell = "pwsh.exe"
vim.keymap.set("n", "<leader>k", ":wincmd k<CR>")
vim.keymap.set("n", "<leader>j", ":wincmd j<CR>")
vim.keymap.set("n", "<leader>h", ":wincmd h<CR>")
vim.keymap.set("n", "<leader>l", ":wincmd l<CR>")
--Diagnosis Icons
local sign = function(opts)
  vim.fn.sign_define(opts.name, {
    texthl = opts.name,
    text = opts.text,
    numhl = "",
  })
end
sign({ name = "DiagnosticSignError", text = "✘" })
sign({ name = "DiagnosticSignWarn", text = "▲" })
sign({ name = "DiagnosticSignHint", text = "⚑" })
sign({ name = "DiagnosticSignInfo", text = "»" })
--Open Terminal
vim.keymap.set("n", "<leader>t", ":wincmd s<CR> :wincmd j<CR> :terminal<CR>a")
vim.keymap.set("n", "<leader>cm", ":wincmd s<CR> :wincmd j<CR> :terminal<CR>aclang++ --debug main.cpp -o main")
--Fine command line
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
