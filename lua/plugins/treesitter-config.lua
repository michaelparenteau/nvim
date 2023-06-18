require("nvim-treesitter").setup({
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "bash",
      "html",
      "javascript",
      "json",
      "markdown",
      "markdown_inline",
      "regex",
      "tsx",
      "typescript",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
  }
})

