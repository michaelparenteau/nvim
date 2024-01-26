-- LAZY FOR PLUGIN MGMT
-- ========================================================================================
require("lazy").setup({
  { 'folke/tokyonight.nvim' },
  { "RRethy/nvim-base16" },
  { 'shaunsingh/moonlight.nvim' },
  { "sainnhe/gruvbox-material" },
  { 'tiagovla/tokyodark.nvim' },
  { 'maxmx03/fluoromachine.nvim' },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  { "EdenEast/nightfox.nvim" },
  { 'folke/which-key.nvim', lazy = true },
  { 'nvim-lualine/lualine.nvim' },
  { 'nvim-telescope/telescope.nvim', tag = '0.1.4', dependencies = { 'nvim-lua/plenary.nvim' } },
  { "phaazon/hop.nvim", lazy = true, },
  { "onsails/lspkind.nvim" },
  { 'neovim/nvim-lspconfig' },
  { "williamboman/mason.nvim", build = ":MasonUpdate" },
  { "williamboman/mason-lspconfig.nvim" },
  { 'lewis6991/gitsigns.nvim' },
  { 'dinhhuy258/git.nvim' },
  { 'MunifTanjim/nui.nvim' },
  { "nvim-neo-tree/neo-tree.nvim" },
  { 'nvim-tree/nvim-web-devicons' },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "windwp/nvim-autopairs" },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'wuelnerdotexe/vim-astro' },
  { "folke/edgy.nvim", event = "VeryLazy", opts = {} },
  { "terrortylor/nvim-comment" },
  { "karb94/neoscroll.nvim" },
  { 'hrsh7th/cmp-nvim-lsp' },
  { "hrsh7th/nvim-cmp" },
  { "norcalli/nvim-colorizer.lua" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-buffer" },
  { "folke/trouble.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {}, },
  { 'hrsh7th/cmp-vsnip' },
  { 'hrsh7th/vim-vsnip' },
  { 'echasnovski/mini.nvim', version = false },
  { "folke/twilight.nvim", opts = { } },
  { "folke/zen-mode.nvim", opts = { on_open = function(win) end, on_close = function(win) end, } },
  { "folke/twilight.nvim", opts = { } },
  { 'TimUntersberger/neogit', dependencies = 'nvim-lua/plenary.nvim' },
  { 'gaborvecsei/memento.nvim', dependencies = 'nvim-lua/plenary.nvim'},
  { 'VonHeikemen/lsp-zero.nvim', branch = 'v2.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      { 'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  },
  { "kylechui/nvim-surround", version = "*", event = "VeryLazy", },
  { "nvim-neorg/neorg", build = ":Neorg sync-parsers", dependencies = { "nvim-lua/plenary.nvim" }, },
})

-- REQUIRE PLUGIN CONFIG FILES
-- ========================================================================================

require "plugins/whichkey"
require "plugins/hop-config"
require "plugins/telescope-config"
require "plugins/lspkind-config"
require "plugins/gitsigns-config"
require "plugins/git-config"
require "plugins/cmp-config"
require "plugins/lualine-config"
require "plugins/lspconfig-config"
require "plugins/mason-config"
require "plugins/neotree-config"
require "plugins/indent_blankline-config"
require "plugins/treesitter-config"
require "plugins/mini-starter-config"
require "plugins/neoscroll-config"
require "plugins/memento-config"
require "plugins/neorg-config"
require "plugins/neogit-config"
require "plugins/fluoromachine-config"
require "plugins/catppuccin-config"
require "plugins/tokyonight-config"
require "plugins/nightfox-config"

-- Single-line default .setup() 
--   or temporary .setup({...}) below
-- All other plugin config live in separate 
--   lua/<plugin>-config.lua files
require("nvim-autopairs").setup()
-- require('mini.animate').setup()
require('nvim_comment').setup()
require('colorizer').setup()
require('nvim-surround').setup()

vim.g.astro_typescript = 'enable'
