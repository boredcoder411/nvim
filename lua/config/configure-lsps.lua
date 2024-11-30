local lspconfig = require "lspconfig"
lspconfig.asm_lsp.setup {}
lspconfig.clangd.setup {}
lspconfig.ruff.setup {}
lspconfig.lua_ls.setup {
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = "LuaJIT",
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
          -- Depending on the usage, you might want to add additional paths here.
          "${3rd}/luv/library",
          "${3rd}/busted/library",
          vim.api.nvim_get_runtime_file("", true),
        },
      },
    })
  end,
  settings = {
    Lua = {},
  },
}
lspconfig.zls.setup {}
lspconfig.rust_analyzer.setup {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = false,
      },
    },
  },
}
lspconfig.clangd.setup({})
