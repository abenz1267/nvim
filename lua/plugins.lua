return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}
  use {'kyazdani42/nvim-web-devicons'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'neovim/nvim-lspconfig'}
  use {'kyazdani42/nvim-tree.lua'}
  use {'kdheepak/lazygit.nvim'}
  use {'tjdevries/nlua.nvim'}
  use {'DanilaMihailov/beacon.nvim'}
  use {'hrsh7th/nvim-compe', requires = {{'hrsh7th/vim-vsnip'}}}
  use {'hoob3rt/lualine.nvim', config = function() require('lualine').status() end}
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {'Th3Whit3Wolf/onebuddy', requires = {'tjdevries/colorbuddy.vim'}}

  use {'tpope/vim-surround'}
  use {'tpope/vim-commentary'}
  use {'matze/vim-move'}
  use {'vim-airline/vim-airline', requires = {'vim-airline/vim-airline-themes'}}
  use {'prettier/vim-prettier', run = 'yarn install'}
end)
