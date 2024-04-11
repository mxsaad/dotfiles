return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = true,
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Next [t]odo comment" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous [t]odo comment" },
    { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Search for [t]odos" },
  },
}
