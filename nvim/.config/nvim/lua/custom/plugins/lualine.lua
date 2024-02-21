return {
  'nvim-lualine/lualine.nvim',
  opts = {
    options = {
      icons_enabled = true,
      theme = 'gruvbox_dark',
      component_separators = '|',
      section_separators = '',
    },
  },
  dependencies = { 'nvim-tree/nvim-web-devicons' }
}
