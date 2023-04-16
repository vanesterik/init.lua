require("nvim-treesitter.install").update({
	with_sync = true,
})
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"javascript",
		"lua",
		"python",
		"tsx",
		"typescript",
	},
	auto_install = true,
	highlight = {
		enable = true,
	},
	sync_install = false,
})
