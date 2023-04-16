local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	checker = {
		enabled = true,
	},
	defaults = {
		lazy = false,
		version = false,
	},
	spec = {
		{ "lukas-reineke/indent-blankline.nvim" },
		{
			"folke/noice.nvim",
			dependencies = {
				"MunifTanjim/nui.nvim",
				"rcarriga/nvim-notify",
			},
		},
		{
			"folke/trouble.nvim",
			dependencies = {
				"nvim-tree/nvim-web-devicons",
			},
		},
		{ "folke/which-key.nvim" },
		{ "lewis6991/gitsigns.nvim" },
		{ "numToStr/Comment.nvim" },
		{ "nvim-lualine/lualine.nvim" },
		{
			"nvim-telescope/telescope.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope-fzf-native.nvim",
				"nvim-telescope/telescope-ui-select.nvim",
			},
			version = "*",
		},
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
		},
		{
			"nvim-treesitter/nvim-treesitter-context",
			dependencies = {
				"nvim-treesitter/nvim-treesitter",
			},
		},
		{
			"nvim-treesitter/nvim-treesitter-textobjects",
			dependencies = {
				"nvim-treesitter/nvim-treesitter",
			},
		},
		{
			"nyoom-engineering/oxocarbon.nvim",
			priority = 1000,
		},
		{ "ThePrimeagen/harpoon" },
		{ "tpope/vim-fugitive" },
		{ "tpope/vim-sleuth" },
		{ "tpope/vim-rhubarb" },
		{
			"VonHeikemen/lsp-zero.nvim",
			branch = "v1.x",
			dependencies = {
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/cmp-nvim-lua" },
				{ "hrsh7th/cmp-path" },
				{ "hrsh7th/nvim-cmp" },
				{ "j-hui/fidget.nvim" },
				{ "L3MON4D3/LuaSnip" },
				{ "neovim/nvim-lspconfig" },
				{ "rafamadriz/friendly-snippets" },
				{ "saadparwaiz1/cmp_luasnip" },
				{ "williamboman/mason-lspconfig.nvim" },
				{ "williamboman/mason.nvim" },
			},
		},
	},
})
