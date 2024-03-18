return {
	"stevearc/aerial.nvim",
	config = function()
		require("aerial").setup({
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
		})
		vim.keymap.set("n", "<leader>a", "<CMD>AerialToggle!<CR>", {
			noremap = true,
			silent = true,
			desc = "Toggle [a]erial",
		})
	end,
}
