local lsp = require("lsp-zero").preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.setup_servers({ "lua_ls", "pyright", "tsserver" })

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
