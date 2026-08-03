return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          mason = false,
        },
        nil_ls = {
          mason = false,
        },
      },
    },
  },
}
