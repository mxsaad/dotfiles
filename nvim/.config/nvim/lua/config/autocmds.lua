-- Highlight yanked text
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Transparent gitsign column
vim.cmd([[
  augroup GitSignTransparency
    autocmd!
    autocmd ColorScheme * highlight SignColumn guibg=NONE
  augroup end
]])