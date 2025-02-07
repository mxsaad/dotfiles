return {
	"stevearc/oil.nvim",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		skip_confirm_for_simple_edits = true,
		lsp_file_methods = { autosave_changes = true },
	},
	keys = { { "-", "<cmd>Oil --float<cr>", desc = "Open parent directory" } },
}
