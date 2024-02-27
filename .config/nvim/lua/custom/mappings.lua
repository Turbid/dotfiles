---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["<leader>li"] = {
      ":set list! list?<CR>", "Toggle list chars",
    },
    ["<leader>tt"] = {
      function ()
        require("base46").toggle_theme()
      end,
      "Toggle theme",
    },
    ["<leader>gg"] = {
      function()
        local term = require("nvterm.terminal").new("float")
        vim.api.nvim_chan_send(term.job_id, "lazygit\n")
      end,
      "open Lazygit",
    },
  },
}

return M
