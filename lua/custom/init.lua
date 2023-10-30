-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- So that `ciw` doesn't override the existing
-- value stored on the clipboard
local opt = vim.opt
opt.clipboard = ""

-- -- Snippets using the lua format
-- vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/lua_snippets"

-- Show line for preferred width
opt.colorcolumn = "80" -- str:  Show col for max line length
