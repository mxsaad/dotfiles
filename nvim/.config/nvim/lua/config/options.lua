-- Relative line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Sync clipboard between OS and Neovim
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true
 
-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Keep cursor centered
vim.o.scrolloff = 999

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- Turn off line wrap
vim.wo.wrap = false

-- Tab size
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Enable colors
vim.o.termguicolors = true

-- Colorscheme
vim.o.background = "dark"

-- SignColumn highlight
vim.cmd [[ hi SignColumn guibg=NONE ]]

-- Custom diagnostic signs
vim.fn.sign_define('DiagnosticSignError', { text = '', texthl = 'DiagnosticVirtualTextError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '', texthl = 'DiagnosticVirtualTextWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '', texthl = 'DiagnosticVirtualTextInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '', texthl = 'DiagnosticVirtualTextHint' })

-- Custom trouble.nvim signs and highlights
vim.cmd [[ hi link TroubleSignError DiagnosticVirtualTextError ]]
vim.cmd [[ hi link TroubleSignWarning DiagnosticVirtualTextWarn ]]
vim.cmd [[ hi link TroubleSignInfo DiagnosticVirtualTextInfo ]]
vim.cmd [[ hi link TroubleSignHint DiagnosticVirtualTextHint ]]
vim.cmd [[ hi TroubleFoldIcon guibg=NONE ]]
vim.cmd [[ hi TroubleCount guibg=NONE ]]
vim.cmd [[ hi TroubleText guibg=NONE ]]

-- vim: ts=2 sts=2 sw=2 et
