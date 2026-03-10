return {
  {
    "sainnhe/gruvbox-material",
    priority = 1000,
    config = function()
      -- enable true colors
      vim.o.termguicolors = true

      -- dark mode
      vim.o.background = "dark"

      -- contrast
      vim.g.gruvbox_material_background = "medium"

      -- optional settings
      vim.g.gruvbox_material_enable_italic = true
      vim.g.gruvbox_material_better_performance = 1

      -- load colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
}
