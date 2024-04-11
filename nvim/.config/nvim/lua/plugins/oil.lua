return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		skip_confirm_for_simple_edits = true,
		lsp_file_methods = { autosave_changes = true },
	},
	keys = { { "-", "<cmd>Oil<cr>", desc = "Open parent directory" } },
}
