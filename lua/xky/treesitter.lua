local configs = require("nvim-treesitter.configs")
configs.setup {
  ensure_installed = {"cpp", "python", "bash", "c", "lua", "javascript", "html", "vue"},
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = false, disable = { "yaml" } },
  rainbow = {
    enable = false,
    colors = {
      "#E06C75",
      "#E5C07B",
      "#98C379",
      "#56B6C2",
      "#61AFEF",
      "#C678DD",
      "#E06C75"
    },
    extended_mode = true,
    max_file_lines = nil
  }
}
