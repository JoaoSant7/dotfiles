return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,

    opts = {
      compile = false,
      undercurl = true,

      commentStyle = { italic = false },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},

      transparent = false,
      dimInactive = false,
      terminalColors = true,

      colors = {
        palette = {},
        theme = {
          wave = {},
          lotus = {},
          dragon = {},
          all = {},
        },
      },

      overrides = function(colors)
        return {}
      end,

      theme = "wave",

      background = {
        dark = "wave",
        light = "lotus",
      },
    },

    config = function(_, opts)
      require("kanagawa").setup(opts)
      vim.cmd.colorscheme("kanagawa")
    end,
  },
}
