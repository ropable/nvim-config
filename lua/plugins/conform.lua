return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters_by_ft = {
      css = { "prettier" },
      htmldjango = { "djlint" },
      html = { "djlint" },
      javascript = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      python = { "isort", "ruff_fix", "ruff_format" },
    },
    format_on_save = {
      lsp_fallback = false,
      async = false,
      timeout_ms = 1000,
    },
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      })
    end, { desc = "Format file or range (in visual mode)" }),
  },
}
