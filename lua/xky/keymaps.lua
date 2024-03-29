

local opts = {noremap = true, silent = true}

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 窗口移动
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("n", "<leader>s", ":wall<cr>", opts) -- 打开目录树
-- buffer移动
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- 调整窗口大小
keymap("n", "<leader><UP>", ":resize -2<cr>", opts)
keymap("n", "<leader><Down>", ":resize +2<cr>", opts)
keymap("n", "<leader><Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<leader><Right>", ":vertical resize +2<cr>", opts)
-- 取消shift+j的合并行操作
keymap("v", "<S-j>", "<nop>", opts)
keymap("n", "<S-j>", "<nop>", opts)

-- visual mode下快捷缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
-- keymap("v", "p", '"_dkp', opts) --不让选中删除替换掉默认register

-- 搜索的时候保持光标在中央
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)


keymap("i", ",", ",<C-g>u", opts)
keymap("i", ".", ".<C-g>u", opts)


keymap('n', '<leader>q', ':cclose<cr>', opts)

-----------------------------------------------------------
-----------------------------------------------------------
--------------------- 插件配置-----------------------------
-----------------------------------------------------------
-----------------------------------------------------------

-- fzf
--keymap("n", "<C-p>", ":Files<cr>", opts)


-- hop

keymap("n", "ff", ":HopChar2<cr>", opts)

-- Nvimtree

keymap("n", "<C-n>", ":NvimTreeToggle<cr>", opts)


-- telescope

keymap("n", "<C-p>", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<C-p>", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({previewer = false}))<cr>", opts)
keymap("n", "<leader>P", "<cmd>Telescope live_grep<cr>", opts)
-- keymap("n", "<leader>P", "<cmd>lua require'telescope.builtin'.live_grep(require('telescope.themes').get_ivy())<cr>", opts)
-- keymap("n", "<leader>p", "<cmd>Telescope current_buffer_fuzzy_find<cr>", opts)
keymap("n", "<leader>p", "<cmd>lua require'telescope.builtin'.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown())<cr>", opts)

-- keymap('n', "<C-g>", "<cmd>Telescope projects<cr>", opts)
keymap("n", "<leader>f", ":Format<cr>", opts)


-- hlslens
vim.cmd[[
noremap <silent> n <Cmd>execute('normal! ' . v:count1 . 'n')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap <silent> N <Cmd>execute('normal! ' . v:count1 . 'N')<CR>
            \<Cmd>lua require('hlslens').start()<CR>
noremap * *<Cmd>lua require('hlslens').start()<CR>
noremap # #<Cmd>lua require('hlslens').start()<CR>
noremap g* g*<Cmd>lua require('hlslens').start()<CR>
noremap g# g#<Cmd>lua require('hlslens').start()<CR>

" use : instead of <Cmd>
" nnoremap <silent> <leader>l :noh<CR>
]]


-- markdown
keymap('n', "<leader>md", ":MarkdownPreviewToggle<cr>", opts)


-- zen-mode
keymap('n', "<leader>z", ":ZenMode<cr>", opts)


-- trouble
keymap('n', "<leader>tt", "<cmd>Trouble document_diagnostics<cr>", opts)
keymap('n', "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>", opts)
keymap('n', "<leader>tq", "<cmd>TroubleClose<cr>", opts)


-- symbols
keymap('n', "<leader>s", "<cmd>SymbolsOutline<cr>", opts)




