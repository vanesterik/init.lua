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
    {
      "github/copilot.vim",
    },
    {
      "goolord/alpha-nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
    },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-nvim-lsp" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/nvim-cmp" },
    { "jose-elias-alvarez/null-ls.nvim" },
    { "L3MON4D3/LuaSnip" },
    { "lewis6991/gitsigns.nvim" },
    { "neovim/nvim-lspconfig" },
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
    { "numToStr/Comment.nvim" },
    { "rafamadriz/friendly-snippets" },
    { "saadparwaiz1/cmp_luasnip" },
    { "ThePrimeagen/harpoon" },
    { "tpope/vim-fugitive" },
    { "tpope/vim-sleuth" },
    { "tpope/vim-rhubarb" },
    {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
      depedencies = {
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/nvim-cmp" },
        { "neovim/nvim-lspconfig" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-nvim-lua" },
        { "L3MON4D3/LuaSnip" },
        { "rafamadriz/friendly-snippets" },
      },
    },
  },
})
