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
						-- https://github.com/neovim/nvim-lspconfig/pull/3232
						if server_name == "tsserver" then
							server_name = "ts_ls"
						end

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

				local bufopts = function(description)
					return { buffer = ev.buf, desc = description }
				end

				-- Buffer local mappings.
				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, bufopts("Go to [D]eclaration"))
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts("Go to [d]efinition"))
				vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts("Show [K]eyword Popup"))
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts("Go to [i]mplementation"))
				vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, bufopts("Show signature help"))
				vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, bufopts("Workspace [a]dd folder"))
				vim.keymap.set(
					"n",
					"<leader>wr",
					vim.lsp.buf.remove_workspace_folder,
					bufopts("Workspace [r]emove folder")
				)
				vim.keymap.set("n", "<leader>wl", function()
					print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
				end, bufopts("Workspace [l]ist folders"))
				vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, bufopts("Go to type [D]efinition"))
				vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, bufopts("Buffer [r]ename"))
				vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, bufopts("List [c]ode [a]ctions"))
				vim.keymap.set("n", "gr", vim.lsp.buf.references, bufopts("List [r]eferences"))
			end,
		})
	end,
}
