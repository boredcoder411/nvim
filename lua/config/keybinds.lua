local keys = {
  { "n", "grn" },
  { "n", "gra" },
  { "v", "gra" },
  { "n", "grr" },
  { "n", "gri" },
  { "n", "grt" },
  { "n", "gO" },
  { "i", "<C-s>" },
}

for _, key in ipairs(keys) do
  local mode, lhs = unpack(key)
  vim.keymap.del(mode, lhs)
end

vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

vim.keymap.set("n", "<leader><Tab>", ":BufferNext<CR>", { desc = "Next tab", noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":BufferClose<CR>", { desc = "Close tab", noremap = true, silent = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.keymap.set("n", "<leader>xx", "<CMD>Trouble diagnostics toggle<CR>", { desc = "Open diagnostics panel" })
vim.keymap.set(
  "n",
  "<leader>xX",
  "<CMD>Trouble diagnostics toggle filter.buf=0<CR>",
  { desc = "Open diagnostics for this buffer" }
)
vim.keymap.set("n", "<leader>cs", "<CMD>Trouble symbols toggle focus=false<CR>", { desc = "Open symbols panel" })
vim.keymap.set(
  "n",
  "<leader>cL",
  "<CMD>Trouble lsp toggle focus=false win.position=right<CR>",
  { desc = "Open definitions panel" }
)
vim.keymap.set("n", "<leader>xL", "<CMD>Trouble loclist toggle<CR>", { desc = "Toggle location list panel" })
vim.keymap.set("n", "<leader>xQ", "<CMD>Trouble qflist toggle<CR>", { desc = "Toggle quickfix panel" })
