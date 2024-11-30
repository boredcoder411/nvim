local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  "",
  "",
  "888     888  .d8888b.  888b    888                  888     888 d8b               ",
  "888     888 d88P  Y88b 8888b   888                  888     888 Y8P               ",
  "888     888 Y88b.      88888b  888                  888     888                   ",
  "Y88b   d88P  \"Y888b.   888Y88b 888  .d88b.   .d88b. Y88b   d88P 888 88888b.d88b.  ",
  " Y88b d88P      \"Y88b. 888 Y88b888 d8P  Y8b d88\"\"88b Y88b d88P  888 888 \"888 \"88b ",
  "  Y88o88P         \"888 888  Y88888 88888888 888  888  Y88o88P   888 888  888  888 ",
  "   Y888P    Y88b  d88P 888   Y8888 Y8b.     Y88..88P   Y888P    888 888  888  888 ",
  "    Y8P      \"Y8888P\"  888    Y888  \"Y8888   \"Y88P\"     Y8P     888 888  888  888 ",
}
dashboard.section.buttons.val = {
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}
dashboard.opts.opts.noautocmd = true
require("alpha").setup(dashboard.opts)
