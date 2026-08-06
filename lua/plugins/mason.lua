return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "djlint",
        "flake8",
        "isort",
        "prettier",
        "eslint_d",
        "ruff",
        "black",
        "stylua",
        "shellcheck",
        "shfmt",
        "sqlfluff",
        "hadolint",
        "twigcs",
        "twig-cs-fixer",
      },
    },
  },
}
