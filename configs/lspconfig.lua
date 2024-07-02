local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "denols", "tsserver", "ccls", "clangd", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.denols.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
}

lspconfig.tsserver.setup {
  on_attach = on_attach,
  root_dir = lspconfig.util.root_pattern "package.json",
  single_file_support = false,
}

lspconfig.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache",
    },
  },
}

lspconfig.ccls.setup {
  cmd = {
    "clangd",
    "--background-index",
    -- "--query-driver=/Users/sullrich/.platformio/packages/toolchain-xtensa-esp32s3/bin/xtensa-esp32s3-elf-gcc*"
  },
}
