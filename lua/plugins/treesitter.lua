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
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
