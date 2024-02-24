return {
  "github/copilot.vim",
  events = { "BufWritePost", "BufReadPost", "InsertLeave" },
  config = function()
    vim.g.copilot_assume_mapped = true
  end,
}
