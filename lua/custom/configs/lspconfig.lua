local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.elixirls.setup {
  cmd = { vim.fn.expand "~/elixir-ls/release/language_server.sh" },
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- aquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false,
    },
  },
}

-- Followed the instructions here: https://dyrynda.com.au/blog/neovim-tailwind-intellisense
-- and had to set the root directory using this article: https://superuser.com/questions/1690310/how-come-root-directory-is-not-detected-by-lspconfig-when-loading-emmet-ls-c
-- TODO>>>> Still not working, but :LspInfo shows that it at least loads correctly
lspconfig.tailwindcss.setup {
  root_dir = function()
    return vim.loop.cwd()
  end,
}

--
-- lspconfig.pyright.setup { blabla}
