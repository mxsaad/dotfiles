return {
	"NvChad/nvim-colorizer.lua",
	events = { "BufWritePost", "BufReadPost", "InsertLeave" },
	opts = {
		filetypes = { "*" },
		user_default_options = {
			css = true,
			tailwind = true,
			mode = "virtualtext",
		},
	},
}
