-- Install packer
require("base")
require("neodev").setup()
require("fidget").setup()

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

-- vim: ts=2 sts=2 sw=2 et
