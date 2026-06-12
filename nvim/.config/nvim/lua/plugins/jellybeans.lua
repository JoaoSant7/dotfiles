return {
  "wtfox/jellybeans.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = false,
    italics = true,
    bold = true,
    flat_ui = true, -- toggles "flat UI" for pickers
    background = {
      dark = "jellybeans-warm", -- default dark palette
      light = "jellybeans-light", -- default light palette
    },
    plugins = {
      all = false,
      auto = true, -- auto-detect installed plugins via lazy.nvim
    },
    on_highlights = function(highlights, colors) end,
    on_colors = function(colors) end,
  },
}
