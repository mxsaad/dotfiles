return {
	"stevearc/aerial.nvim",
	opts = {
		on_attach = function(bufnr)
			-- Jump forwards/backwards with '{' and '}'
			vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", {
				buffer = bufnr,
				desc = "Jump to previous heading",
			})
			vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", {
				buffer = bufnr,
				desc = "Jump to next heading",
			})
		end,
	},
	keys = {
		{ "<leader>a", "<cmd>AerialToggle!<cr>", desc = "Toggle [a]erial" },
	},
}
