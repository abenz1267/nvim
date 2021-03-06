vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

require('plugins')
require('settings')
require('theme')
require('mappings')
require('configs')
require('lsp_various')
require('lsp_go')
