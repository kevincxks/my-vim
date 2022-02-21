

vim.opt.cmdheight = 2 -- 状态栏下面的空行
vim.opt.completeopt = {"menuone", "noselect"} -- 补全相关的选项

vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.incsearch = true -- 搜索时立刻跳转
vim.opt.ignorecase = true
vim.opt.mouse = 'a' -- 使鼠标可用
vim.opt.pumheight = 10 -- popup menu高度
vim.opt.showmode = false -- 不会再看到诸如Insert的状态显示
vim.opt.showtabline = 2 -- always展示标签页
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.splitbelow = true -- split window永远在下面
vim.opt.splitright = true -- 永远在右边
vim.opt.swapfile = false
vim.opt.timeoutlen = 1000 -- 组合键的等待时间milliseconds
vim.opt.undofile = true -- undo可以一直保存
vim.cmd "set undodir=~/.vim/undodir"
vim.opt.updatetime = 300 -- faster completion
vim.opt.errorbells = false
vim.opt.writebackup = false --
vim.opt.expandtab = true -- tab->spaces
vim.opt.shiftwidth = 2 -- the number of spaces inserted for each indent
vim.opt.tabstop = 2 -- insert 2 spaces for a tab
vim.opt.softtabstop = 2
vim.opt.cursorline = false -- 高亮当前行
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4 -- 行号宽度
vim.opt.signcolumn = "yes" -- 给插件用的sign列
vim.opt.wrap = false -- 不要折叠长行
vim.opt.linebreak = true

vim.opt.scrolloff = 10 -- 保证上下移动时留有8行
vim.opt.sidescrolloff = 10 -- 左右移动留有8列

vim.opt.guifont = "Nerd:h17"
vim.opt.termguicolors = true
vim.opt.shortmess:append "c"

vim.opt.laststatus = 2 -- 显示状态栏

-- vim.cmd "set whichwrap+=<,>,[,],h,l" -- 光标可以跨行移动
vim.cmd [[set iskeyword+=-]] -- 把-算进一个单词内

vim.opt.backspace = {"indent", "eol", "start"}

vim.opt.wrap = true -- 太长的行分几行显示

