return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      -- Allow formatters 10 seconds to work.
      timeout_ms = 10000,
    },
    formatters_by_ft = {
      css = { "prettier" },
      htmldjango = { "djlint" },
      html = { "prettier" },
      javascript = { "prettier" },
      lua = { "stylua" },
      markdown = { "prettier" },
      python = { "isort", "ruff_fix", "ruff_format" },
    },
  },
}
