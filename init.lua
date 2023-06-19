-- LOCALS
-- ========================================================================================
local set = vim.opt
local api = vim.api


-- BASE SETUP
-- ========================================================================================
set.number = true
set.mouse = 'a'
set.ignorecase = true
set.smartcase = true
set.hlsearch = false
set.wrap = false
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.termguicolors = true
set.cursorline = true
set.clipboard:append { 'unnamed', 'unnamedplus' }
set.list = true
set.listchars:append "eol:↴"
set.scrolloff = 4
set.splitbelow = true
set.splitright = true
set.title = true


-- KEY MAPPINGS
-- ========================================================================================
vim.g.mapleader = " "
vim.keymap.set("n", "-", vim.cmd.Ex)
-- TODO: consider moving this key mapping to which-key or where plugin is configured
vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>", {})


-- PLUGIN MGMT
-- ========================================================================================
require "lazy-config" -- lua/lazy-config.lua
require "pluginfile"  -- lua/pluginfile.lua

-- TODO: fix colorscheme to be simpler
--
-- COLORSCHEME (load after plugins)
-- ========================================================================================
-- vim.cmd('colorscheme [base-16-<theme>]') -- https://github.com/RRethy/nvim-base16#builtin-colorschemes
-- vim.cmd('colorscheme moonlight')
-- vim.cmd('colorscheme gruvbox-material')
-- vim.cmd('colorscheme tokyodark')
-- vim.cmd('colorscheme catpuccin')
-- vim.cmd('colorscheme moonfly')
-- vim.cmd('colorscheme nightfox')

vim.cmd('colorscheme tokyonight-storm')
vim.cmd('highlight CursorLine guibg=#242C48')
