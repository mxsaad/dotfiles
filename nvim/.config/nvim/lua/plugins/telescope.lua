return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"nvim-treesitter/nvim-treesitter",
		"nvim-telescope/telescope-ui-select.nvim",
		"debugloop/telescope-undo.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	config = function()
		require("telescope").load_extension("fzf")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("undo")
	end,
	keys = {
		{ "<leader>sf", "<cmd>Telescope find_files hidden=true<cr>", desc = "Search for [f]iles" },
		{ "<leader>sg", "<cmd>Telescope live_grep<cr>", desc = "Search via [g]rep" },
		{ "<leader>sb", "<cmd>Telescope buffers<cr>", desc = "Search for [b]uffers" },
		{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Search for [h]elp" },
		{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Search for [k]eymaps" },
		{ "<leader>sc", "<cmd>Telescope commands<cr>", desc = "Search for [c]ommands" },
		{ "<leader>su", "<cmd>Telescope undo<cr>", desc = "Search in [u]ndo tree" },
	},
}
