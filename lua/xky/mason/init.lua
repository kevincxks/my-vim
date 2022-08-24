
require("xky.mason.handlers").setup()
require('lsp-setup').setup({
		on_attach = require("xky.mason.handlers").on_attach,
    servers = {
        ['pyright'] = require("xky.mason.settings.pyright"),
        ['sumneko_lua'] = require("xky.mason.settings.sumneko_lua"),
        -- ['clangd'] = require("xky.mason.settings.clangd"),
    }
})

require('xky.mason.settings.ccls')
--
--
