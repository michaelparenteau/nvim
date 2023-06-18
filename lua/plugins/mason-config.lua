require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "html", "rome", "tsserver" },
})

