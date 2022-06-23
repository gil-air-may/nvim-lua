-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- Load nvim color scheme:
--- OneDark styles: dark, darker, cool, deep, warm, warmer, light
-- require('onedark').setup {
--   style = 'deep',
--   colors = { fg = '#b2bbcc' }, --default: #a0a8b7
-- }
-- require('onedark').load()


-- Import color scheme for other components (i.e. statusline) with:
--- require('colors').colorscheme_name

local M = {}

-- Theme: OneDark (dark)
--- Colors: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
M.onedark = {
  bg = '#282c34',
  fg = '#b2bbcc',
  pink = '#c678dd',
  green = '#98c379',
  cyan = '#56b6c2',
  yellow = '#e5c07b',
  orange = '#d19a66',
  red = '#e86671',
}
return M
