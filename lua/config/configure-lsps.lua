require("mason").setup()

vim.lsp.enable("clangd")

vim.lsp.enable("ruff")

vim.lsp.config["lua_ls"] = {
  on_init = function(client)
    client.config.settings.Lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        version = "LuaJIT",
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME,
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
vim.lsp.enable("lua_ls")

vim.lsp.config["rust_analyzer"] = {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = false,
      },
    },
  },
}
vim.lsp.enable("rust_analyzer")

vim.lsp.enable("gopls")

vim.lsp.enable("svelte")

vim.lsp.enable("nimls")
