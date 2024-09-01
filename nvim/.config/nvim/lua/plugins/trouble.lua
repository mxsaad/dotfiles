return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = true,
  cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle diagnostics" },
		{ "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Toggle [b]uffer diagnostics" },
		{ "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Toggle [s]ymbols" },
		{ "<leader>xl", "<cmd>Trouble loclist toggle<cr>", desc = "Toggle [l]oclist" },
		{ "gR", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "Toggle [R]eferences" },
	},
}
