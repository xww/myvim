set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'luochen1990/rainbow'
Plugin 'vim-syntastic/syntastic'
"Plugin 'bling/vim-airline'

Plugin 'godlygeek/tabular' "markdown
Plugin 'plasticboy/vim-markdown'

Plugin 'honza/vim-snippets' "代码片段
Plugin 'SirVer/ultisnips'

Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'dgryski/vim-godef'
Plugin 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'jnurmine/Zenburn'
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jistr/vim-nerdtree-tabs'

call vundle#end()            " required

filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
set fileformat=unix 
syntax on
set nu
let mapleader=","
"set foldmethod=indent
set laststatus=1
set completeopt=longest,menu




"方法折叠设置
set foldmethod=marker
set fdm=syntax
set foldlevelstart=99

"tab键设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"分屏切换重映射
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-j> <c-w>j
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-l> <c-w>l

"set tags+=./tags
"set tags+=/root/go1.8/src/tags
map <c-]> g<c-]> 
set mouse=a
nnoremap <F4> :set mouse=v<CR>
nnoremap <F5> :set mouse=a<CR>

"复制粘贴
vmap <C-c> "+y
"vmap <C-v> "+p
"vmap <C-x> "+d
"set clipboard+=unnamed


" YouCompleteMe http://howiefh.github.io/2015/05/22/vim-install-youcompleteme-plugin/
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"nnoremap <F4> :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)

"Tagbar ctags
nmap <F2> :TagbarToggle<CR> 
set autochdir 
set tags+=./tags;

"nerdtree
map <F1> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F3> :NERDTreeFind<CR>
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : '▲',
    \ "Staged"    : '†',
    \ "Untracked" : '★',
    \ "Renamed"   : '→',
    \ "Unmerged"  : '=',
    \ "Deleted"   : 'X',
    \ "Dirty"     : 'x',
    \ "Clean"     : '√',
    \ "Unknown"   : '?'
    \ }
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeHidden=1 "显示隐藏文件
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeWinPos='left'
let g:NERDTreeSize=30

"golang
let g:go_fmt_command = "goimports"
nnoremap ,g :call GodefUnderCursor()<CR>
let g:go_def_mode = "guru"

"scrooloose/nerdcommenter
"nmap <leader>ci |NERDComInvertComment|
let g:NERDSpaceDelims = 1
"let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"let g:NERDCommentEmptyLines = 1

"rainbow
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

"ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"markdown
let g:vim_markdown_folding_disabled = 1

"syntastic "http://blog.csdn.net/Demorngel/article/details/69053443
let g:syntastic_check_on_wq=1
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
let g:syntastic_always_populate_loc_list = 1  
let g:syntastic_aggregate_errors = 1
"let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_auto_jump = 1
let g:syntastic_enable_highlighting=1
let g:syntastic_enable_signs=1

let g:go_highlight_functions = 1 
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1 
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:molokai_original = 1


"ctrlp
"c-t 新的tab打开，c-v 新的split打开

"列操作
"删除列
"1.光标定位到要操作的地方。
"2.CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
"3.d 删除。
" 插入列
" 插入操作的话知识稍有区别。例如我们在每一行前都插入"() "：
" 1.光标定位到要操作的地方。
" 2.CTRL+v 进入“可视 块”模式，选取这一列操作多少行。
" 3.SHIFT+i(I) 输入要插入的内容。
" 4.ESC 按两次，会在每行的选定的区域出现插入的内容。

" 69 "gt/gT tab切换
