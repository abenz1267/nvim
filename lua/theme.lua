require('colorbuddy').colorscheme('onebuddy')

-- custom overrides
local _, colors, Group, _, styles = require('colorbuddy').setup()
Group.new('SignColumn', colors.none, colors.none, styles.NONE)
Group.new('NormalFloat', colors.none, colors.pmenu, styles.NONE)

Group.new('DiffAdd', colors.hue_4, colors.hue_4, styles.NONE)
Group.new('DiffChange', colors.orange, colors.orange, styles.NONE)
Group.new('DiffDelete', colors.hue_5_2, colors.hue_5_2, styles.NONE)

Group.new('BufferTabpageFill', colors.none, colors.syntax_bg, styles.NONE)

Group.new('TSKeyword', colors.pink, colors.none, styles.italic)
Group.new('TSInclude', colors.pink, colors.none, styles.italic)
Group.new('TSConditional', colors.pink, colors.none, styles.italic)
Group.new('TSException', colors.pink, colors.none, styles.italic)
Group.new('TSInclude', colors.pink, colors.none, styles.italic)
Group.new('TSKeyword', colors.pink, colors.none, styles.italic)
Group.new('TSKeywordFunction', colors.pink, colors.none, styles.italic)
Group.new('TSKeywordOperator', colors.pink, colors.none, styles.italic)
Group.new('TSNamespace', colors.pink, colors.none, styles.italic)
Group.new('TSRepeat', colors.pink, colors.none, styles.italic)
