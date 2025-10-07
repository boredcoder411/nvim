local dashboard = require "alpha.themes.dashboard"

local function get_fortune()
  local handle = io.popen "fortune -s | cowsay"
  if handle then
    local result = handle:read "*a"
    handle:close()
    return result
  end
end

dashboard.section.header.val = vim.split(get_fortune(), "\n")
dashboard.section.header.opts.hl = "AlphaHeader"

dashboard.section.buttons.val = {
  dashboard.button("n", "󰈔  New file", ":ene <BAR> startinsert<CR>"),
  dashboard.button("f", "󰈞  Find file", ":Telescope find_files<CR>"),
  dashboard.button("t", "󰊄  Fuzzy Grep", ":Telescope live_grep<CR>"),
  dashboard.button("r", "󰄉  Recent Files", ":Telescope oldfiles<CR>"),
  dashboard.button("q", "󰈆  Quit", ":qa<cr>"),
}

return dashboard
