local set = vim.opt


-- BASE SETUP
-- ========================================================================================
set.number = true -- line numbers
set.mouse = 'a' -- mouse enabling
set.ignorecase = true -- ignore case when searching
set.smartcase = true -- if search term uses uppercase, use it
set.hlsearch = false -- disable highlighting of previous search
set.wrap = false -- don't wrap lines
set.tabstop = 2 -- default is 8, some people like 4... I don't know why.
set.shiftwidth = 2 -- ^^ see previous line
set.expandtab = true
set.termguicolors = true -- colorscheme controlled by /lua/plugins module
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
local api = vim.api
api.nvim_set_keymap("n", "<leader>zm", ":ZenMode<CR>", {})


-- PLUGIN MGMT
-- ========================================================================================
-- plugin manager 
-- lua/lazy-config
require "lazy-config"
-- plugin manifest, manage plugin config in separate files /lua/plugins/<plugin>-config.lua
-- "lua/pluginfile"
require "pluginfile"


-- COLORSCHEME (load after plugins)
-- vim.g.moonlight_contrast = false
-- vim.cmd('colorscheme fluoromachine')
vim.cmd('colorscheme tokyonight-storm')
