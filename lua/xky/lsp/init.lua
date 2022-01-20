
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end



require("xky.lsp.lsp-installer")
require("xky.lsp.handlers").setup()
