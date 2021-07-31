


    




set number
syntax on
set showmode
set encoding=utf-8

set t_Co=256

set autoindent


" >>的字符数
set shiftwidth=4


" tab转为多少个空格
set softtabstop=4


" 相对行号
set relativenumber

" 光标所在行高亮
set cursorline


set textwidth=80

"太长的行分为几行显示
set wrap


" 只有遇到特定符号才折行
set linebreak


" 是否显示状态栏，0不显示，1只在多窗口显示，2显示
set laststatus=2
set statusline=%F%m%r%h%w\ \ \ \ \ \ \ \ \ \ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


" 高亮显示搜索结果
set hlsearch

" 搜索时立刻跳转到匹配
set incsearch


" 搜索时忽略大小写
set ignorecase


" 定义前缀键为，
let mapleader=","



"""""""""""""""""""
"NERDTree Settings"
"""""""""""""""""""

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



