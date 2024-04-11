return {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"williamboman/mason.nvim",
			config = true,
			keys = { { "<leader>m", "<cmd>Mason<cr>", desc = "Open [m]ason" } },
		},
		{
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			opts = {
				ensure_installed = { "stylua", "eslint_d", "prettier", "ruff" },
			},
		},
		{
			"williamboman/mason-lspconfig.nvim",
			opts = {
				ensure_installed = {
					"lua_ls",
					"tsserver",
					"jsonls",
					"html",
					"cssls",
					"bashls",
					"pyright",
					"tailwindcss",
					"svelte",
				},
				automatic_installation = true,
				handlers = {
					function(server_name) -- dynamically setup servers
						require("lspconfig")[server_name].setup({
							capabilities = require("cmp_nvim_lsp").default_capabilities(),
						})
					end,
				},
			},
		},
		"folke/neodev.nvim",
		"j-hui/fidget.nvim",
	},
	config = function()
		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				-- Buffer local mappings.
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to [D]eclaration" })
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to [d]efinition" })
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show [K]eyword Popup" })
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Go to [i]mplementation" })
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, { desc = "Show signature help" })
				vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, { desc = "Workspace [a]dd folder" })
				vim.keymap.set(
					"n",
					"<leader>wr",
					vim.lsp.buf.remove_workspace_folder,
					{ desc = "Workspace [r]emove folder" }
				)
				vim.keymap.set("n", "<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, { desc = "Workspace [l]ist folders" })
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, { desc = "Go to type [D]efinition" })
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Buffer [r]ename" })
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "List [c]ode [a]ctions" })
				vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "List [r]eferences" })
			end,
		})
	end,
}
