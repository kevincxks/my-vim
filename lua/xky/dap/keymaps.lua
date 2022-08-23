
local opt = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<leader>db', '<cmd>lua require"dap".toggle_breakpoint()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dB',
                        '<cmd>lua require"dap".set_breakpoint(vim.fn.input("Breakpoint condition: "))<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dE', '<cmd>lua require"dap".set_exception_breakpoints({"all"})<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dc', '<cmd>lua require("dap.breakpoints").clear()<CR>', opt)

vim.api.nvim_set_keymap('n', '<leader>dh', '<cmd>lua require"dap".step_out()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dl', '<cmd>lua require"dap".step_into()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dk', '<cmd>lua require"dap".step_back()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dj', '<cmd>lua require"dap".step_over()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua require"dap".continue()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dC', '<cmd>lua require"dap".run_to_cursor()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dq',
                        '<cmd>lua require"dap".disconnect({ terminateDebuggee = true });require"dap".close()<CR>', opt)

vim.api.nvim_set_keymap('n', '<leader>dK', '<cmd>lua require"dap".up()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dJ', '<cmd>lua require"dap".down()<CR>', opt)

vim.api.nvim_set_keymap('', '<leader>de', '<cmd>lua require("dapui").eval()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>du', '<cmd>lua require("dapui").toggle()<CR>', opt)

vim.api.nvim_set_keymap('n', '<leader>dii', '<cmd>lua require("dapui").float_element()<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dib', '<cmd>lua require("dapui").float_element("breakpoints")<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dir', '<cmd>lua require("dapui").float_element("repl")<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dis', '<cmd>lua require("dapui").float_element("scopes")<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>dit', '<cmd>lua require("dapui").float_element("stacks")<CR>', opt)
vim.api.nvim_set_keymap('n', '<leader>diw', '<cmd>lua require("dapui").float_element("watches")<CR>', opt)

