return {
	"monaqa/dial.nvim",
	keys = {
		{
			"<C-a>",
			function()
				return require("dial.map").inc_normal()
			end,
			expr = true,
			desc = "Increment",
			mode = "n",
		},
		{
			"<C-x>",
			function()
				return require("dial.map").dec_normal()
			end,
			expr = true,
			desc = "Decrement",
			mode = "n",
		},
		{
			"<C-a>",
			function()
				return require("dial.map").inc_visual()
			end,
			expr = true,
			desc = "Increment",
			mode = "v",
		},
		{
			"<C-x>",
			function()
				return require("dial.map").dec_visual()
			end,
			expr = true,
			desc = "Decrement",
			mode = "v",
		},
	},
	opts = function()
		local augend = require("dial.augend")

		local logical_alias = augend.constant.new({
			elements = { "&&", "||" },
			word = false,
			cyclic = true,
		})

		local ordinal_numbers = augend.constant.new({
			elements = {
				"first",
				"second",
				"third",
				"fourth",
				"fifth",
				"sixth",
				"seventh",
				"eighth",
				"ninth",
				"tenth",
			},
			word = false,
			cyclic = true,
		})

		local weekdays = augend.constant.new({
			elements = {
				"Monday",
				"Tuesday",
				"Wednesday",
				"Thursday",
				"Friday",
				"Saturday",
				"Sunday",
			},
			word = true,
			cyclic = true,
		})

		local months = augend.constant.new({
			elements = {
				"January",
				"February",
				"March",
				"April",
				"May",
				"June",
				"July",
				"August",
				"September",
				"October",
				"November",
				"December",
			},
			word = true,
			cyclic = true,
		})

		local capitalized_boolean = augend.constant.new({
			elements = {
				"True",
				"False",
			},
			word = true,
			cyclic = true,
		})

		return {
			dials_by_ft = {
				css = "css",
				javascript = "typescript",
				javascriptreact = "typescript",
				json = "json",
				lua = "lua",
				markdown = "markdown",
				python = "python",
				sass = "css",
				scss = "css",
				typescript = "typescript",
				typescriptreact = "typescript",
				yaml = "yaml",
			},
			groups = {
				default = {
					augend.integer.alias.decimal, -- nonnegative decimal number (0, 1, 2, 3, ...)
					augend.integer.alias.hex, -- nonnegative hex number  (0x01, 0x1a1f, etc.)
					augend.date.alias["%Y/%m/%d"], -- date (2022/02/19, etc.)
					ordinal_numbers,
					weekdays,
					months,
				},
				typescript = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					augend.constant.alias.bool, -- boolean value (true <-> false)
					logical_alias,
					augend.constant.new({ elements = { "let", "const" } }),
				},
				yaml = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					augend.constant.alias.bool, -- boolean value (true <-> false)
				},
				css = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					augend.hexcolor.new({
						case = "lower",
					}),
					augend.hexcolor.new({
						case = "upper",
					}),
				},
				markdown = {
					augend.misc.alias.markdown_header,
				},
				json = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					augend.semver.alias.semver, -- versioning (v1.1.2)
				},
				lua = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					augend.constant.alias.bool, -- boolean value (true <-> false)
					augend.constant.new({
						elements = { "and", "or" },
						word = true, -- if false, "sand" is incremented into "sor", "doctor" into "doctand", etc.
						cyclic = true, -- "or" is incremented into "and".
					}),
				},
				python = {
					augend.integer.alias.decimal, -- nonnegative and negative decimal number
					capitalized_boolean,
					logical_alias,
				},
			},
		}
	end,
	config = function(_, opts)
		require("dial.config").augends:register_group(opts.groups)
		vim.g.dials_by_ft = opts.dials_by_ft
	end,
}
