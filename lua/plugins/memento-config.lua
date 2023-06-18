vim.g.memento_history = 20
vim.g.memento_shorten_path = true
vim.g.memento_window_width = 80
vim.g.memento_window_height = 14
vim.api.nvim_set_keymap("n", "<leader>mh", ":lua require('memento').toggle()<CR>", {})

