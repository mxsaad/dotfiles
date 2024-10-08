return {
	"mfussenegger/nvim-lint",
	events = { "BufWritePost", "BufReadPost", "InsertLeave" },
	config = function()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			svelte = { "eslint_d" },
			python = { "ruff" },
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
