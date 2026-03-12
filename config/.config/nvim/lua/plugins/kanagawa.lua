return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      theme = "wave", -- wave | dragon | lotus
    })
    vim.cmd("colorscheme kanagawa")
  end,
}
