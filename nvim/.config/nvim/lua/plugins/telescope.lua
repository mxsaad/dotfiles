return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'nvim-treesitter/nvim-treesitter',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-ui-select.nvim', opts = {} },
  },
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>sf', "<CMD>Telescope find_files hidden=true<CR>", { desc = 'Search for [f]iles' })
    vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Search via [g]rep' })
    vim.keymap.set('n', '<leader>sb', builtin.buffers, { desc = 'Search for [b]uffers' })
    vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = 'Search for [h]elp' })

    require('telescope').load_extension('fzf')
    require("telescope").load_extension("ui-select")
  end
}
