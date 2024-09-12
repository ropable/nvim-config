return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "djlint",
      "flake8",
      "isort",
      "prettier",
      "ruff",
      "stylua",
      "shellcheck",
      "shfmt",
    },
  },
}
