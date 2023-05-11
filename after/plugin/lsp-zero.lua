local lsp = require("lsp-zero").preset({})

lsp.ensure_installed({
  "bashls",
  "lua_ls",
  "tsserver",
})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

lsp.format_on_save({
  format_opts = {
    timeout_ms = 10000,
  },
  servers = {
    ["null-ls"] = {
      "css",
      "javascript",
      "json",
      "lua",
      "python",
      "typescript",
      "zsh",
    },
  },
})

require("lspconfig").lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local null_ls = require("null-ls")
local null_opts = lsp.build_options("null-ls", {})

null_ls.setup({
  on_attach = function(client, bufnr)
    null_opts.on_attach(client, bufnr)
  end,
  sources = {
    null_ls.builtins.formatting.shfmt.with({
      args = { "-i", "2", "-ci" },
    }),
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.prettier,
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.trim_newlines,
    null_ls.builtins.formatting.trim_whitespace,
  },
})
