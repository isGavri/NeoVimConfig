return {
	"nvim-neorg/neorg",
	dependencies = { "nvim-lua/plenary.nvim" },
	build = ":Neorg sync-parsers",
	-- tag = "*",
	lazy = true, -- enable lazy load
	ft = "norg", -- lazy load on file type
	cmd = "Neorg", -- lazy load on command
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {}, -- Adds pretty icons to your documents
				["core.export"] = {},
				["core.export.markdown"] = {},
				["core.summary"] = {},
        ["core.journal"] = {},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/notes",
							personaLife = "~/notes/life",
							school = "~/notes/school",
						},
					},
				},
			},
		})
	end,
}
