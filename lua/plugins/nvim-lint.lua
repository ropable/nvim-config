-- https://github.com/LazyVim/LazyVim/discussions/4094#discussioncomment-10178217
-- local HOME = os.getenv("HOME")
return {
  "mfussenegger/nvim-lint",
  optional = true,
  opts = {
    linters_by_ft = {
      markdown = { "markdownlint" },
      python = { "ruff" },
      javascript = { "prettier" },
      html = { "prettier" },
      dockerfile = { "hadolint" },
      twig = { "twigcs" },
    },
    -- linters = {
    --   ["markdownlint-cli2"] = {
    --     args = { "--config", HOME .. "/.markdownlint-cli2.yaml", "--" },
    --   },
    -- },
  },
}
