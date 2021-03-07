-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}

-- Tree
vim.g.nvim_tree_width = 50
vim.g.nvim_tree_ignore = {'.git', 'node_modules', '.cache'}
vim.g.nvim_tree_show_icons = {
	git = 0,
	folders = 1,
	files = 1
}

-- Lazygit
vim.g.lazygit_floating_window_windblend = 0
vim.g.lazygit_floating_window_scaling_factor = 1.0

-- Compe
require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 2;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = true;

  source = {
    path = true;
    buffer = true;
    calc = true;
    vsnip = true;
    nvim_lsp = true;
    nvim_lua = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
    treesitter = true;
  };
}

-- Beacon
vim.g.beacon_shrink = 0
vim.g.beacon_size = 1000
vim.g.beacon_ignore_filetypes = {'fzf'}

-- Prettier
vim.cmd 'let g:prettier#autoformat = 1'
vim.cmd 'let g:prettier#autoformat_require_pragma = 0'
vim.cmd 'let g:prettier#exec_cmd_async = 1'
vim.cmd 'let g:prettier#quickfix_enabled = 0'
vim.cmd 'let g:prettier#quickfix_auto_focus = 0'

-- LSP
vim.cmd 'autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.go lua vim.lsp.buf.formatting_sync(nil, 1000)'

-- Barbar
vim.cmd 'let bufferline = get(g:, "bufferline", {})'
vim.cmd 'let bufferline.animation = v:false'
vim.cmd 'let bufferline.closable = v:false'
