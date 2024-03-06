return {
  "michaelrommel/nvim-silicon",
  lazy = true,
  cmd = "Silicon",
  config = function()
    require("silicon").setup({
      font = "CaskaydiaCove Nerd Font Mono=34;Noto Color Emoji=34",
      theme = "OneHalfDark",
      background = "#161b22",
      shadow_blur_radius = 0,
      shadow_offset_x = 0,
      shadow_offset_y = 0,
      shadow_color = nil,
    })
  end,
}
