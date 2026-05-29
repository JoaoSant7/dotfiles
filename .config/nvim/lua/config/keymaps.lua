-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Makes "jj" a shortcut to Normal Mode
vim.keymap.set("i", "jj", "<ESC>", { silent = true })

-- Makes <leader> + h a shortcut to the dashboard
vim.keymap.set("n", "<leader>h", function()
  require("snacks").dashboard.open()
end, { desc = "Open Dashboard" })
