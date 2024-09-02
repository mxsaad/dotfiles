return {
	"nvim-treesitter/nvim-treesitter",
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"typescript",
				"javascript",
				"html",
				"css",
				"tsx",
				"python",
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
		})
	end,
}
