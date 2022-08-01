
local lspconfig = require('lspconfig')

local python_root_files = {
  '.git',
  'WORKSPACE', -- added for Bazel; items below are from default config
  'pyproject.toml',
  'setup.py',
  'setup.cfg',
  'requirements.txt',
  'Pipfile',
  'pyrightconfig.json',
  '.flake8',
}
return {
  root_dir = lspconfig.util.root_pattern(unpack(python_root_files)),
	settings = {


		python = {
      analysis = {
        -- pythonVersion = "3.6"
      }
		},
	},
}
