return {
	"CopilotC-Nvim/CopilotChat.nvim",
	dependencies = {
		{
			"github/copilot.vim",
			events = { "BufWritePost", "BufReadPost", "InsertLeave" },
			config = function()
				vim.g.copilot_assume_mapped = true
			end,
		},
	},
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
}
