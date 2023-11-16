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
  },
}

return M
