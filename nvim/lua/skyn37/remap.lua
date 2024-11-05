vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.api.nvim_set_keymap('x', '<leader>[[', '"*y', { noremap = true, silent = true }) -- set copy to clipboard

vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting
vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- relative line numbers


vim.api.nvim_exec([[
    set number
    set relativenumber
]], false)

vim.cmd [[
    autocmd BufRead,BufNewFile *.fs,*.vs set filetype=glsl
]]
