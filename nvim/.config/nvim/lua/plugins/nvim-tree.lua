return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", {
      desc = "Toggle File [e]xplorer",
      silent = true
    })
    require("nvim-tree").setup {}
  end,
}

