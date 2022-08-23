local dap = require('dap')




local mason_path = vim.fn.stdpath('data') .. '/mason'
local adapter_path = mason_path .. '/bin/debugpy-adapter'
dap.adapters.python = {
  type = 'executable',
  command = adapter_path,
  -- args = { '-m', 'debugpy.adapter' }
}


dap.configurations.python = {
  {
    -- The first three options are required by nvim-dap
    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
    request = 'launch';
    name = "Launch file";

    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

    program = "${file}"; -- This configuration will launch the current file if used.
    pythonPath = function()
      -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
      -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
      -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
      local conda = os.getenv("CONDA_PREFIX")
      if conda and vim.fn.executable(conda .. "/bin/python") == 1 then
        return conda .. "/bin/python"
      else
        return 'python3'
      end
    end;
  },
}
