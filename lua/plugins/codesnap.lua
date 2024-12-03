return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  config = function()
    require("codesnap").setup({
      watermark = "",
    })
  end,
}
