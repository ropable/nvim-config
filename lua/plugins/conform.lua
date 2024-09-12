return {
  "stevearc/conform.nvim",
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
  },
}
