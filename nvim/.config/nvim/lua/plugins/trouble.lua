return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = true,
	keys = {
		{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle diagnostics" },
		{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Toggle [w]orkspace diagnostics" },
		{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Toggle [d]ocument diagnostics" },
		{ "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "Toggle [q]uickfix" },
		{ "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "Toggle [l]oclist" },
		{ "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "Toggle [R]eferences" },
	},
}
