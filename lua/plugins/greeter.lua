return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local dash = require "config.greeter-theme"
    require("alpha").setup(dash.config)
  end,
}
