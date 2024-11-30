local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  "",
  "",
  " _______  _______________________   ____.___   _____   ",
  " \\      \\ \\_   _____/\\_____  \\   \\ /   /|   | /     \\  ",
  " /   |   \\ |    __)_  /   |   \\   Y   / |   |/  \\ /  \\ ",
  "/    |    \\|        \\/    |    \\     /  |   /    Y    \\",
  "\\____|__  /_______  /\\_______  /\\___/   |___\\____|__  /",
  "        \\/        \\/         \\/                     \\/ ",
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
