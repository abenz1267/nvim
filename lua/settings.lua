vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax enable'

-- global
local g = vim.o

g.splitright = true
g.splitbelow = true
g.termguicolors = true
g.ignorecase = true
g.smartcase = true
g.hlsearch = false
g.completeopt = "menuone,noselect"
g.inccommand = "nosplit"
g.hidden = true

-- window
local w = vim.wo

w.number = true
w.relativenumber = true
w.cursorline = true
w.signcolumn = "no"
vim.cmd 'autocmd BufEnter * :set fcs=eob:\\ '

-- buffer
local b = vim.bo
local indent = 2

b.expandtab = true
b.tabstop = indent
b.shiftwidth = indent
