return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
                diagnosticMode = "openFilesOnly",
              },
            },
          },
        },
        marksman = { enabled = false },
        markdown_oxide = {
          capabilities = vim.tbl_deep_extend("force", vim.lsp.protocol.make_client_capabilities(), {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          }),
        },
      },
    },
  },
}
