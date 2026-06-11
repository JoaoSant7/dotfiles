-- ~/.config/nvim/lua/plugins/modus.lua

return {
  {
    "miikanissi/modus-themes.nvim",
    priority = 1000,
    config = function()
      require("modus-themes").setup({
        style = "modus_vivendi", -- or "modus_operandi"
        transparent = false,
      })

      vim.cmd.colorscheme("modus")
    end,
  },
}
