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


"复制粘贴
vmap <C-c> "+y
"vmap <C-v> "+p
"vmap <C-x> "+d
"set clipboard+=unnamed



"方法折叠设置
set foldmethod=marker
set fdm=syntax
set foldlevelstart=99

"tab键设置
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"备忘
"gt/gT tab切换


"分屏切换重映射
nnoremap <silent> <C-h> <c-w>h
nnoremap <silent> <C-j> <c-w>j
nnoremap <silent> <C-k> <c-w>k
nnoremap <silent> <C-l> <c-w>l

set tags+=./tags
set mouse=a
nnoremap <F9> :set mouse=v<CR>
nnoremap <F10> :set mouse=a<CR>


" YouCompleteMe
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

"syntastic
"let g:syntastic_check_on_open = 1
"let g:syntastic_go_checkers = ['go', 'golint', 'govet']
"let g:syntastic_aggregate_errors = 1


"ctrlp
"c-t 新的tab打开，c-v 新的split打开
