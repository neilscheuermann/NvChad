---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    -- Disable nvim terminal
    ["<leader>h"] = "",
    ["<leader>v"] = "",
  },
}

-- My custom mappings
M.my_custom_mappings = {
  n = {
    -- File management
    ["<leader>q"] = { "<cmd> q <CR>", "Quit" },
    ["<leader>w"] = { "<cmd> w <CR>", "Write/Save" },
    ["<leader>u"] = { "<C-r>", "Redo" },
    ["<leader>n"] = { "<cmd> NvimTreeToggle <CR>", "Toggle NvimTree" },
    -- Windows & Navigation
    ["<leader>vs"] = { "<cmd> vs <CR>", "Vertical Split" },
    ["<leader>ss"] = { "<cmd> sp <CR>", "Horizontal Split" },
    ["<leader>h"] = { "<C-w>h", "Window left" },
    ["<leader>l"] = { "<C-w>l", "Window right" },
    ["<leader>j"] = { "<C-w>j", "Window down" },
    ["<leader>k"] = { "<C-w>k", "Window up" },
    -- Clipboard setup to use both vim and system clipboards
    -- Also needed to add `opt.clipboard = ""` to custom/init.lua
    ["<leader>p"] = { '"+p', "Paste from system clipboard" },
    -- Workplace diagnostics using Telescope
    ["<leader>wd"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "search diagnostics",
    },
  },

  v = {
    -- Clipboard setup to use both vim and system clipboards
    -- Also needed to add `opt.clipboard = ""` to custom/init.lua
    ["<leader>y"] = { '"*y', "Copy to system clipboard" },
    ["<leader>d"] = { '"+d', "Cut to system clipboard" },
    ["<leader>p"] = { '"+p', "Paste from system clipboard" },
  },

  -- i = {
  --    ["jk"] = { "<ESC>", "escape insert mode" , opts = { nowait = true }},
  --   -- ...
  -- }
}

return M
