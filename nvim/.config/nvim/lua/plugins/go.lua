return {
	"ray-x/go.nvim",
	dependencies = { "ray-x/guihua.lua" },
	config = true,
	event = { "CmdlineEnter" },
	ft = { "go", "gomod" },
	build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
}
