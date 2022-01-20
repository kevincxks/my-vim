

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

keymap("n", "<leader>e", ":Lex 30<cr>", opts) -- 打开目录树


-- 调整窗口大小
keymap("n", "<leader><UP>", ":resize -2<cr>", opts)
keymap("n", "<leader><Down>", ":resize +2<cr>", opts)
keymap("n", "<leader><Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<leader><Right>", ":vertical resize +2<cr>", opts)


-- 取消shift+j的合并行操作
keymap("v", "<S-j>", "<nop>", opts)
keymap("n", "<S-j>", "<nop>", opts)
keymap("i", "<S-j>", "<nop>", opts)

-- visual mode下快捷缩进
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
keymap("v", "p", '"_dp', opts) --不让选中删除替换掉默认register

-- 搜索的时候保持光标在中央
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)


keymap("i", ",", ",<C-g>u", opts)
keymap("i", ".", ".<C-g>u", opts)
keymap("i", "!", "!<C-g>u", opts)
keymap("i", "?", "?C-g>u", opts)



-----------------------------------------------------------
-----------------------------------------------------------
--------------------- 插件配置-----------------------------
-----------------------------------------------------------
-----------------------------------------------------------

-- fzf
keymap("n", "<C-p>", ":Files<cr>", opts)


-- hop

keymap("n", "ff", ":HopChar2<cr>", opts)

-- nerdtree

keymap("n", "<C-n>", ":NERDTreeToggle<cr>", opts)

-- floaterm

keymap("n", "<C-t>", ":FloatermToggle<cr>", opts)
keymap("t", "<C-t>", "<C-\\><C-n>:FloatermToggle<cr>", opts)

-- rainbow

vim.cmd [[
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'lisp': {
\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
\       },
\       'vim': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\       },
\       'html': {
\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\       },
\       'css': 0,
\   }
\}
]]


