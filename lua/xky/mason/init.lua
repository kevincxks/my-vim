
require("xky.mason.handlers").setup()
require('lsp-setup').setup({
		on_attach = require("xky.mason.handlers").on_attach,
    servers = {
        ['pyright'] = require("xky.mason.settings.pyright"),
    }
})
