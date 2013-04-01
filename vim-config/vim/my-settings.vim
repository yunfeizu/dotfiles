set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set smartindent
set cindent

let g:visual_studio_mapping = 0

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
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
" Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'
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
nnoremap <tab> <C-w>w

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

" let Grep_Skip_Dirs='RCS CVS SCCS .svn'
nnoremap <F8> :GundoToggle<CR> <C-w>=
nnoremap <F7> :YRShow<CR>


" setting for EasyGrep

let g:EasyGrepReplaceWindowMode=2
let g:EasyGrepMode = 2
let g:EasyGrepRecursive = 1


nnoremap <unique> <leader>ft :NERDTreeFind<CR>
let g:NERDTreeMapToggleZoom = "<space>"


" UltiSnips

" we can't use <tab> as our snippet key since we use that with ycm
let g:UltiSnipsSnippetsDir         = $HOME . '/.vim/UltiSnips'
" make ~/.vim/UltiSnips loading after ~/.vim/bundle/ultisnips/UltiSnips
let g:UltiSnipsDontReverseSearchPath="1"
" let g:UltiSnipsExpandTrigger       = "<m-s>"
" let g:UltiSnipsListSnippets        = "<c-m-s>"
" let g:UltiSnipsJumpForwardTrigger  = "<m-h>"
" let g:UltiSnipsJumpBackwardTrigger = "<m-t>"
let g:snips_author                 = 'CloudZu'

" quickhl
nmap <leader>m <Plug>(quickhl-toggle)
xmap <leader>m <Plug>(quickhl-toggle)
nmap <leader>M <Plug>(quickhl-reset)
xmap <leader>M <Plug>(quickhl-reset)
nmap <leader>n <Plug>(quickhl-match)


" YCM
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']
