require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'ayu_mirage',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = { },
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = { { 
      'filename',
      file_status = true,
      path = 0
    } }, 
    lualine_y = {'progress'},
    lualine_z = {'location'} 
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {},
    lualine_y = {},
    lualine_z = {},
  }
})
