require('colorbuddy').colorscheme('onebuddy')

-- custom overrides
local _, colors, Group, _, styles = require('colorbuddy').setup()
Group.new('SignColumn', colors.none, colors.none, styles.NONE)
Group.new('NormalFloat', colors.none, colors.pmenu, styles.NONE)

-- lualine
local lualine = require('lualine')
lualine.options.theme = 'onedark'
lualine.options.section_separators = nil
lualine.options.component_separators = nil
