require("conform").setup({
  formatters_by_ft = {
    go = { "gofumpt", {"golines"}, {"goimports-reviser", "goimports"} },
    lua = { "stylua" },
    python = { "isort", "black" },
    javascript = { { "prettierd", "prettier" } },
    c = {"clang-format"},
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
  log_level = vim.log.levels.ERROR,
  notify_on_error = true,
})

local opts = {

}
return opts
