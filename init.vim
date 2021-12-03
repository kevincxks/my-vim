
call plug#begin()
" 让光标处在的单词拥有下划线 
Plug 'itchyny/vim-cursorword'
Plug 'ludovicchabant/vim-gutentags' 
Plug 'preservim/nerdtree'
Plug 'mhinz/vim-startify'
Plug 'w0ng/vim-hybrid'
"Plug 'AndrewRadev/splitjoin.vim'
" 异步执行
Plug 'skywind3000/asyncrun.vim'
" linting
Plug 'dense-analysis/ale'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
" 主题
Plug 'ajmwagar/vim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'octol/vim-cpp-enhanced-highlight'
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'


call plug#end()

""""""""""""""""""""""
"      Settings      "
""""""""""""""""""""""
set backspace=indent,eol,start
"inoremap jj <Esc>


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




" 不要铃声
set noerrorbells


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
"set statusline=%F%m%r%h%w\ \ \ \ \ \ \ \ \ \ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}


" 高亮显示搜索结果
set nohlsearch

" 允许buffer未保存切换
set hidden 

" 搜索时立刻跳转到匹配
set incsearch


" 搜索时忽略大小写
set ignorecase


" 定义前缀键为，
let mapleader=" "


" 距离边界还有八行就可以开始滚动
set scrolloff=8

set colorcolumn=80

set signcolumn=yes

" 设置颜色主题
"colorscheme gruvbox
colorscheme deus

nnoremap <C-a> <Home>
nnoremap <C-e> <End>


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




""""""""""""""""""""""
"""""""编译运行"""""""
""""""""""""""""""""""

" 自动打开 quickfix window ，高度为 6
let g:asyncrun_open = 6


" 设置 F10 打开/关闭 Quickfix 窗口
noremap <leader>q :call asyncrun#quickfix_toggle(6)<cr>


" 编译单文件
nnoremap <silent> <leader>c :AsyncRun g++ -Wall -O2 -std=c++11 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>


" 运行单个文件
nnoremap <silent> <leader>r :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>


" 定义项目目录
let g:asyncrun_rootmarks = ['.svn', '.git', '.root', '_darcs', 'build.xml']

" make项目
nnoremap <silent> <leader>m :AsyncRun -cwd=<root> make <cr>


""""""""""""""""""""""
""""""""""ALE"""""""""
""""""""""""""""""""""


let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++11'
let g:ale_cpp_cc_options = '-Wall -O2 -std=c++11'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_linters = {
\   'cpp': ['clang'],
\   'c': ['clang'],
\}


""""""""""""""""""""""
"""""""signify""""""""
""""""""""""""""""""""

set updatetime=100

" 把:diff 映射为:SignifyDiff
cnoremap diff SignifyDiff

""""""""""""""""""""""
"""""""""fzf""""""""""
""""""""""""""""""""""

nnoremap <C-p> :Files<CR>

""""""""""""""""""""""
"""""""indent"""""""""
""""""""""""""""""""""

let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

""""""""""""""""""""""
"""""""rainbow""""""""
""""""""""""""""""""""

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


""""""""""""""""""""""
""""""highlight"""""""
""""""""""""""""""""""

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_concepts_highlight = 1


""""""""""""""""""""""
"""""""coc.nvim"""""""
""""""""""""""""""""""

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


