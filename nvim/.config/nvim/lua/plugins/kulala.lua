return {
	"mistweaverco/kulala.nvim",
	opts = {},
	keys = {
		-- Execute HTTP request
		{
			"<leader>rx",
			function()
				require("kulala").run()
			end,
			mode = "n",
			desc = "E[x]ecute HTTP request",
		},

		-- Execute all HTTP requests
		{
			"<leader>ra",
			function()
				require("kulala").run_all()
			end,
			mode = "n",
			desc = "Execute [a]ll HTTP requests",
		},

		-- Jump between HTTP requests
		{
			"[r",
			function()
				require("kulala").jump_prev()
			end,
			mode = "n",
			desc = "Jump to previous HTTP [r]equest",
		},
		{
			"]r",
			function()
				require("kulala").jump_next()
			end,
			mode = "n",
			desc = "Jump to next HTTP [r]equest",
		},

		-- Inspect the current request
		{
			"<leader>ri",
			function()
				require("kulala").inspect()
			end,
			mode = "n",
			desc = "[i]nspect current HTTP request",
		},

		-- Toggle between body and headers
		{
			"<leader>rt",
			function()
				require("kulala").toggle_view()
			end,
			mode = "n",
			desc = "[t]oggle HTTP response body/headers",
		},

		-- Copy request as curl command
		{
			"<leader>rc",
			function()
				require("kulala").copy()
			end,
			mode = "n",
			desc = "[c]opy HTTP request as CURL command",
		},

		-- Insert from curl command
		{
			"<leader>rp",
			function()
				require("kulala").from_curl()
			end,
			mode = "n",
			desc = "[p]aste CURL command as HTTP request",
		},
	},
}
