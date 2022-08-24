
-- local lspconfig = require('lspconfig')
-- local cpp_root_files = {
--   '.git',
--   'WORKSPACE', -- added for Bazel; items below are from default config
--   'compile_commands.json',
--   'compile_flags.txt'
-- }
-- local filetypes = { "c", "cpp", "objc", "objcpp", "opencl" }
-- local server_config = {
--   filetypes = filetypes,
--   init_options = { cache = {
--     directory = "~/.cache/ccls/",
--   } },
--   name = "ccls",
--   cmd = { "ccls" },
--   offset_encoding = "utf-32",
--   root_dir = lspconfig.util.root_pattern(unpack(cpp_root_files))(),
-- }
-- require("ccls").setup {
--   filetypes = filetypes,
--   lsp = {
--     server = server_config,
--     disable_capabilities = {
--       completionProvider = true,
--       documentFormattingProvider = true,
--       documentRangeFormattingProvider = true,
--       documentHighlightProvider = true,
--       documentSymbolProvider = true,
--       workspaceSymbolProvider = true,
--       renameProvider = true,
--       hoverProvider = true,
--       codeActionProvider = true,
--     },
--     disable_diagnostics = true,
--     disable_signature = true,
--   },
-- }
--
--
--
require('lspconfig').ccls.setup{
  on_attach = require("xky.mason.handlers").on_attach,
  cmd = {
    'ccls',
    -- '--log-file=~/.local/.cache/ccls.log',
    -- '-v=1'
  },
  root_dir = require('lspconfig/util').root_pattern("compile_commands.json", "compile_flags.txt", ".ccls"),
  capabilities = require("xky.mason.handlers").capabilities,
  filetypes = {"c", "cpp"},
}
