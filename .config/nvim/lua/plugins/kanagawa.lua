return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
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
        local theme = colors.theme
        local palette = colors.palette

        return {
          -- Floating windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Darker windows
          NormalDark = {
            fg = theme.ui.fg_dim,
            bg = theme.ui.bg_m3,
          },

          LazyNormal = {
            bg = theme.ui.bg_m3,
            fg = theme.ui.fg_dim,
          },

          MasonNormal = {
            bg = theme.ui.bg_m3,
            fg = theme.ui.fg_dim,
          },

          -- Syntax groups
          String = { italic = true },

          Operator = { fg = palette.dragonGray2 },

          -- Static values
          Boolean = { fg = palette.dragonPink },
          Constant = { fg = palette.dragonPink },
          Number = { fg = palette.dragonPink },

          -- Keywords
          Keyword = { fg = palette.dragonRed },

          -- Functions
          Function = { fg = palette.dragonOrange },
          ["@function.builtin"] = { fg = palette.dragonOrange },
          ["@lsp.type.magicFunction"] = {
            fg = palette.dragonOrange,
          },
          ["@lsp.typemod.function.builtin"] = {
            fg = palette.dragonOrange,
          },
          ["@lsp.typemod.function.defaultLibrary"] = {
            fg = palette.dragonOrange,
          },
          ["@lsp.typemod.method.defaultLibrary"] = {
            fg = palette.dragonOrange,
          },
          ["@lsp.typemod.function.readonly"] = {
            fg = palette.dragonOrange,
          },

          -- Types
          Type = { fg = palette.dragonYellow },
          Special = { fg = palette.dragonYellow },

          -- Parameters / members
          Identifier = { fg = palette.dragonBlue },
          Statement = { fg = palette.dragonBlue },
          ["@variable.member"] = {
            fg = palette.dragonBlue,
          },

          -- Variables
          ["@namespace"] = {
            fg = palette.dragonWhite,
          },

          ["@variable.builtin"] = {
            fg = palette.dragonRed,
          },

          ["@variable.parameter"] = {
            fg = palette.dragonWhite,
          },

          ["@variable"] = {
            fg = palette.dragonWhite,
          },

          ["@attribute"] = {
            fg = palette.dragonWhite,
          },
        }
      end,

      theme = "dragon",

      background = {
        dark = "dragon",
        light = "lotus",
      },
    })

    vim.cmd("colorscheme kanagawa")
  end,
}
