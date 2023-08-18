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
      "folke/trouble.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons",
      },
    },
    {
      "folke/which-key.nvim",
    },
    {
      "github/copilot.vim",
    },
    { "lewis6991/gitsigns.nvim" },
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
    { "ThePrimeagen/harpoon" },
    { "tpope/vim-sleuth" },
  },
})
