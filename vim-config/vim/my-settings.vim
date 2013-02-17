set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set cindent

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'SirVer/ultisnips'
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'Auto-Pairs'
Bundle 'SudoEdit.vim'
"................
filetype plugin indent on

" silent exec "colorscheme desertEx"
silent exec "colorscheme molokai"

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.*/
set colorcolumn=100

let OmniCpp_DefaultNamespaces = ["std", "model", "esp"]

set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <tab> %
vnoremap <tab> %

"enable menu but disable alt key menu shotcut
 " set guioptions+=m
set winaltkeys=no

"disable bell and flash warning
set noeb vb t_vb=
au GUIEnter * set vb t_vb=


"Repeat last command and put cursor at start of change
nmap . .`[
map <F9> <Esc>:wa<CR>:make debug -j 4 -C %:p:h <CR>
map <M-F9> :copen <CR>
map <C-F9> :cclose <CR>
map <F10> :cn <CR>
map <M-F10> :cp <CR>
map <F12> :ExpjSelectToggle <CR>
map <F6> <Esc>:VCSGotoOriginal!<CR>:VCSVimDiff<CR>:VCSGotoOriginal<CR>
map <M-F6> <Esc>:diffupdate <CR>
map <C-F6> <Esc>:VCSGotoOriginal! <CR>  
map <silent> <F2> :ExtsGoDirectly<CR>
map <silent> <F3> :CSCD<CR>
map <silent> <M-F3> :ExcsParseFunction<CR>


let g:LookupFile_DisableDefaultMap=1
let g:ctrlp_extensions = ['buffertag']
map <unique> <silent> <F5> :CtrlP CWD<CR>
nmap <unique> <silent> <M-b> :CtrlPBuffer<CR>

let Grep_Skip_Dirs='RCS CVS SCCS .svn'
nnoremap <F8> :GundoToggle<CR> <C-w>=
nnoremap <F7> :YRShow<CR>


nmap <Leader>N <Plug>MarkAllClear


" setting for EasyGrep

let g:EasyGrepReplaceWindowMode=2
let g:EasyGrepMode = 2
let g:EasyGrepRecursive = 1


nnoremap <unique> <leader>ft :NERDTreeFind<CR>
let g:NERDTreeMapToggleZoom = "<space>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                UltiSnips                                "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips is missing a setf trigger for snippets on BufEnter
" autocmd vimrc BufEnter *.snippets setf snippets

" In UltiSnips snippet files, we want actual tabs instead of spaces for indents.
" US will use those tabs and convert them to spaces if expandtab is set when the
" user wants to insert the snippet.
" autocmd vimrc FileType snippets set noexpandtab

" we can't use <tab> as our snippet key since we use that with neocomplcache
" let g:UltiSnipsSnippetsDir         = $HOME . '/dotfiles/vim/UltiSnips'
let g:UltiSnipsExpandTrigger       = "<m-s>"
let g:UltiSnipsListSnippets        = "<c-m-s>"
let g:UltiSnipsJumpForwardTrigger  = "<m-h>"
let g:UltiSnipsJumpBackwardTrigger = "<m-t>"
let g:snips_author                 = 'CloudZu'
