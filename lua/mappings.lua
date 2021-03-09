local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- general
vim.g.mapleader = ' '

map('n', '<leader>to', ':BufferCloseAllButCurrent<CR>', {silent = true}) -- close all tabs execpt current
map('i', 'jj', '<esc>', {noremap = true}) -- exit insert mode

map('n', '<Leader>dc', ':setlocal formatoptions-=cro<CR>', {silent = true}) -- disable comment on newline
map('n', '<Leader>ec', ':setlocal formatoptions=cro<CR>', {silent = true}) -- enable comment on newline

-- splits
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')

map('n', '<C-Right>', ':vertical resize +10<CR>', {silent = true})
map('n', '<C-Left>', ':vertical resize -10<CR>', {silent = true})
map('n', '<C-Up>', ':resize -10<CR>', {silent = true})
map('n', '<C-Down>', ':resize -10<CR>', {silent = true})

-- Telescope
local actions = require('telescope.actions')
require('telescope').setup {
  defaults = {
    prompt_position = "top",
    prompt_prefix = ">",
    sorting_strategy = "ascending",
    layout_strategy = "horizontal",
    mappings = {i = {["<esc>"] = actions.close}}
  }
}

map('n', '<C-p>', '<cmd>Telescope find_files<CR>')
map('n', '<A-p>', '<cmd>Telescope live_grep<CR>')
map('n', '<C-A-p>', '<cmd>Telescope grep_string<CR>')
map('n', '<S-A-p>', '<cmd>Telescope oldfiles<CR>')
map('n', '<leader>cc',
    '<cmd>lua require("telescope.builtin").find_files({prompt_title = "<NVIM CONFIG>", cwd = "~/.config/nvim"})<CR>',
    {silent = true})

-- Tree
map('n', '<C-n>', ':NvimTreeToggle<CR>', {silent = true})
map('n', '<C-a-n>', ':NvimTreeFindFile<CR>', {silent = true})

-- Lazygit
map('n', '<leader>lg', '<cmd>LazyGit<CR>')

-- Compe
map('i', '<CR>', [[compe#confirm('<CR>')]], {expr = true, silent = true})

-- LSP
map('n', '<Leader>ld', '<cmd>Telescope lsp_document_diagnostics<CR>',
    {silent = true})
map('n', '<Leader>lwd', '<cmd>Telescope lsp_workspace_diagnostics<CR>',
    {silent = true})
map('n', '<Leader>ca', '<cmd>Telescope lsp_code_actions<CR>', {silent = true})
map('n', '<Leader>rca', '<cmd>Telescope lsp_range_code_actions<CR>',
    {silent = true})
map('n', '<Leader>gr', '<cmd>Telescope lsp_references<CR>', {silent = true})

map('n', '<leader>ne',
    '<cmd>lua vim.lsp.diagnostic.goto_next { wrap = true }<CR>')
map('n', '<leader>pe', '<cmd>lua vim.lsp.diagnostic.goto_prev{wrap=true}<CR>')
map('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {silent = true})
map('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {silent = true})
map('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>',
    {silent = true})
map('n', '<leader>K', '<cmd>lua vim.lsp.buf.hover()<CR>', {silent = true})
map('n', '<leader>s', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
    {silent = true})
map('n', '<leader>td', '<cmd>lua vim.lsp.buf.type_definition()<CR>',
    {silent = true})
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {silent = true})
