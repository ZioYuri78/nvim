local custom_gruvbox = require'lualine.themes.gruvbox-material'
custom_gruvbox.normal.a.bg = '#99AACC'
--custom_gruvbox.normal.c.bg = '#444499'
custom_gruvbox.inactive.a.bg = '#66BB99'
custom_gruvbox.inactive.a.fg = '#222222'

local inactive = function ()
	return 'INACTIVE'
end

local clock = function()
	return os.date('%H:%M')
end

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = custom_gruvbox, --'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
	disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename', {'datetime', style = '%c'}},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {inactive}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
