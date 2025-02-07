return {
	{
		"github/copilot.vim",
		lazy = false,
		config = function()
			vim.g.copilot_assume_mapped = true
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		build = "make tiktoken",
		opts = {
			window = {
				layout = "float",
				border = "rounded",
				title = "GitHub Copilot",
				relative = "cursor",
				width = 0.8,
			},
		},
		keys = {
			{ "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle [c]opilot [c]hat" },
		},
	},
}
