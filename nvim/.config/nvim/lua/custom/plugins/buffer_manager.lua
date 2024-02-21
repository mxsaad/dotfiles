return {
  'j-morano/buffer_manager.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>b', ':lua require("buffer_manager.ui").toggle_quick_menu()<CR>', { noremap = true, silent = true })
  end
}
