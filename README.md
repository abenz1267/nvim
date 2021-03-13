# Personal Neovim config

## Features

- Native LSP
- Autocompletion via [nvim-compe](https://github.com/hrsh7th/nvim-compe)
- Treesitter highlighting
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) Fuzzy-Find (....and a ton more!!)
- [Tree](https://github.com/kyazdani42/nvim-tree.lua) File-Tree
- [Gitsigns](https://github.com/lewis6991/gitsigns.nvim) for in-file Git information
- [Lazgit](https://github.com/kdheepak/lazygit.nvim) for handling Git
- various other stuff :-)

![Screenshot](nvim.png)

## Installation

`git clone https://github.com/abenz1267/nvim ~/.config/`

Packer will be installed automatically, just havea to run: `:PackerInstall` to install all the plugins.

`:TSUpdate` will install all Treesitter-Parsers

`luarocks install --server=https://luarocks.org/dev luaformatter`

## Keybinds (look at mappings.lua for more, this should cover the most important ones)

| Mapping     | Function               |
| ----------- | ---------------------- |
| Ctrl+p      | Fuzzy Files            |
| Alt+p       | Grep                   |
| Shift+Alt+p | Fuzzy Oldfiles         |
| Ctrl+Alt+p  | Find Word Under Cursor |
| Leader+cc   | Fuzzy Nvim Config      |
| Ctrl+n      | File Tree              |
| Ctrl+Alt+n  | File Tree Current File |
| Leader+lg   | Lazygit                |
| Leader+ld   | Diagnostics File       |
| Leader+wld  | Diagnostics Workspace  |
| Leader+ca   | Code Actions           |
| Leader+rca  | Range Code Actions     |
| Leader+gr   | References             |
| Leader+gd   | Definition(s)          |
| Leader+ne   | Next Error             |
| Leader+pe   | Previous Error         |
| Leader+gD   | Declaration            |
| Leader+gi   | Implementation         |
| Leader+K    | Hover                  |
| Leader+s    | Signature Help         |
| Leader+td   | Type Definition        |
| Leader+rn   | Rename                 |
