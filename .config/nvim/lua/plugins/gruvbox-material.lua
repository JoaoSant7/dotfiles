return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      -- Set background
      vim.o.background = "dark"

      -- Gruvbox Material settings
      vim.g.gruvbox_material_background = "hard" -- soft, medium, hard
      vim.g.gruvbox_material_enable_italic = true

      -- Apply colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
