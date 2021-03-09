return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim', opt = true}
  use {'kyazdani42/nvim-web-devicons'}
  use {'neovim/nvim-lspconfig'}
  use {'tjdevries/nlua.nvim'}
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  use {'Th3Whit3Wolf/onebuddy', requires = {'tjdevries/colorbuddy.vim'}}
  use {'tpope/vim-surround'}
  use {'tpope/vim-commentary'}
  use {'matze/vim-move'}
  use {'glepnir/galaxyline.nvim', branch = 'main'}

  use {
    'andrejlevkovitch/vim-lua-format',
    config = function()
      vim.cmd 'autocmd FileType lua nnoremap <buffer> <c-k> :call LuaFormat()<cr>'
      vim.cmd 'autocmd BufWrite *.lua call LuaFormat()'
    end
  }

  use {
    'DanilaMihailov/beacon.nvim',
    config = function()
      vim.g.beacon_shrink = 0
      vim.g.beacon_size = 1000
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "all",
        highlight = {enable = true}
      }
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    config = function()
      vim.g.nvim_tree_width = 50
      vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
      vim.g.nvim_tree_show_icons = {git = 0, folders = 1, files = 1}
    end
  }

  use {
    'kdheepak/lazygit.nvim',
    config = function()
      vim.g.lazygit_floating_window_windblend = 0
      vim.g.lazygit_floating_window_scaling_factor = 1.0
    end
  }

  use {
    'hrsh7th/nvim-compe',
    requires = {{'hrsh7th/vim-vsnip'}},
    config = function()
      require'compe'.setup {
        enabled = true,
        autocomplete = true,
        debug = false,
        min_length = 2,
        preselect = 'enable',
        throttle_time = 80,
        source_timeout = 200,
        incomplete_delay = 400,
        max_abbr_width = 100,
        max_kind_width = 100,
        max_menu_width = 100,
        documentation = true,

        source = {
          path = true,
          buffer = true,
          calc = true,
          vsnip = true,
          nvim_lsp = true,
          nvim_lua = true,
          spell = true,
          tags = true,
          snippets_nvim = true,
          treesitter = true
        }
      }
    end
  }

  use {
    'romgrk/barbar.nvim',
    config = function()
      vim.cmd 'let bufferline = get(g:, "bufferline", {})'
      vim.cmd 'let bufferline.animation = v:false'
      vim.cmd 'let bufferline.closable = v:false'
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {'nvim-lua/plenary.nvim'},
    config = function() require('gitsigns').setup() end
  }

  use {
    'prettier/vim-prettier',
    run = 'yarn install',
    config = function()
      vim.cmd 'let g:prettier#autoformat = 1'
      vim.cmd 'let g:prettier#autoformat_require_pragma = 0'
      vim.cmd 'let g:prettier#exec_cmd_async = 1'
      vim.cmd 'let g:prettier#quickfix_enabled = 0'
      vim.cmd 'let g:prettier#quickfix_auto_focus = 0'
    end
  }
end)
