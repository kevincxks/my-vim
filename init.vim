
call plug#begin()
" 让光标处在的单词拥有下划线
Plug 'itchyny/vim-cursorword'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
Plug 'fatih/molokai'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ctrlpvim/ctrlp.vim'

" 异步执行
Plug 'skywind3000/asyncrun.vim'
call plug#end()

""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""

inoremap jj <Esc>


set tabstop=4
set expandtab
" >>的字符数
set shiftwidth=4
" tab转为多少个空格
set softtabstop=4

set number
syntax on
set showmode
set encoding=utf-8

set t_Co=256

set autoindent






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

"nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"""""""""""""""""""
"""""""Ctags"""""""
"""""""""""""""""""
set tags=./.tags;,.tags
"set tags=./tags;,tags




""""""""""""""""""""""
"""""""gutentags"""""""
""""""""""""""""""""""
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']





