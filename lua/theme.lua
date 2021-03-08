require('colorbuddy').colorscheme('onebuddy')

-- custom overrides
local _, colors, Group, _, styles = require('colorbuddy').setup()
Group.new('SignColumn', colors.none, colors.none, styles.NONE)
Group.new('NormalFloat', colors.none, colors.pmenu, styles.NONE)

Group.new('DiffAdd', colors.green, colors.none, styles.NONE)
Group.new('DiffChange', colors.orange, colors.none, styles.NONE)
Group.new('DiffDelete', colors.red, colors.none, styles.NONE)

Group.new('BufferTabpageFill', colors.none, colors.syntax_bg, styles.NONE)
