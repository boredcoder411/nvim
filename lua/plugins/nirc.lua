local plugin_dir = vim.env.HOME .. "/nirc"

return {
  {
    dir = vim.fn.isdirectory(plugin_dir) == 1 and plugin_dir or nil,
    vim.fn.isdirectory(plugin_dir) == 1 and nil or 'boredcoder411/nirc',
    config = function()
      require("nirc").setup({
        nickname = "nirc",
        username = "nirc",
        realname = "nirc",
      })
    end
  },
  {
    dir = "~/share-nvim-plugin"
  },
  {
    dir = "~/live_edit",
    config = function()
      require("live_edit").setup()
    end
  }
}
