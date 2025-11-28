require("mason-lspconfig").setup( {
  ensure_installed = {
    "bashls",
    "gopls",
    "jdtls",
    "jsonls",
    "lua_ls",
    "yamlls"
  }
})
