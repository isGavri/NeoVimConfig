return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs") -- set up for treesitter configuration
		config.setup({

			ensure_installed = {
				"lua",
				"cpp",
				"java",
				"c",
				"python",
				"rust",
				"javascript",
				"html",
				"css",
				"norg",
				"vim",
				"regex",
				"bash",
				"markdown",
				"markdown_inline",
			},
			highlight = {
				enable = true,
				disable = { "latex" },
			},
			indent = { enable = true },
		})
	end,
}
