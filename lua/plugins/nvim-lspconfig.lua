return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Add pyright to lspconfig
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {},
    },
  },
}
