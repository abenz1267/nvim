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
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use {'Th3Whit3Wolf/onebuddy', requires = {'tjdevries/colorbuddy.vim'}}

  use {'tpope/vim-surround'}
  use {'tpope/vim-commentary'}
  use {'matze/vim-move'}
  use {'romgrk/barbar.nvim'}
  use {
  'glepnir/galaxyline.nvim',
   branch = 'main'
  }

  use {
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = function()
    require('gitsigns').setup()
    end
  }

  use {'prettier/vim-prettier', run = 'yarn install'}
end)
