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

Plugin 'honza/vim-snippets' "代码片段
Plugin 'SirVer/ultisnips'

Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'dgryski/vim-godef'
Plugin 'Blackrush/vim-gocode'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'

call vundle#end()            " required

filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
set fileformat=unix 
syntax on
set nu
let mapleader=","
"set foldmethod=indent
set foldmethod=marker
set fdm=syntax
set foldlevelstart=99
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
nnoremap <F1> :YcmCompleter GoToDefinitionElseDeclaration<CR>

"Tagbar ctags
nmap <F2> :TagbarToggle<CR>
set autochdir 
set tags+=./tags;

"nerdtree
map <F1> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let g:NERDTreeIndicatorMapCustom = {
    " \ "Modified"  : "m",
    " \ "Staged"    : "s",
    " \ "Untracked" : "u",
    " \ "Renamed"   : "r",
    " \ "Unmerged"  : "U",
    " \ "Deleted"   : "d",
    " \ "Dirty"     : "D",
    " \ "Clean"     : "C",
    " \ 'Ignored'   : 'I',
    " \ "Unknown"   : "?"
    " \ }

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
