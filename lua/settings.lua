vim.cmd 'filetype plugin indent on'
vim.cmd 'syntax enable'

local function set(scope, values) for k, v in pairs(values) do scope[k] = v end end

-- global
local g = vim.o
local globals = {
  splitright = true,
  splitbelow = true,
  termguicolors = true,
  ignorecase = true,
  smartcase = true,
  hlsearch = false,
  completeopt = "menuone,noselect",
  inccommand = "nosplit",
  hidden = true,
  backup = false,
  writebackup = false,
  undofile = true,
  swapfile = false,
  showmode = false,
  updatetime = 300
}

-- window
local w = vim.wo
local windows = {
  number = true,
  relativenumber = true,
  cursorline = true,
  signcolumn = "yes"
}

vim.cmd 'autocmd BufEnter * :set fcs=eob:\\ '
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {timeout = 500}'

-- buffer
vim.cmd 'set expandtab'
vim.cmd 'set tabstop=2'
vim.cmd 'set shiftwidth=2'
vim.cmd 'set shortmess+=c'

set(g, globals)
set(w, windows)
