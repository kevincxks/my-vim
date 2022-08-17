local configs = require("nvim-treesitter.configs")
require 'nvim-treesitter.install'.compilers = { "clang++" }
configs.setup {
  ensure_installed = {"rust", "cpp", "python", "bash", "c", "lua", "html", "vue"},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = false, disable = { "yaml", "vue" } }
}
