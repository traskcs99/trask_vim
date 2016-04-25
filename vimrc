set background=dark
colorscheme hybrid
set number	     
set linebreak	     
set showbreak=+++
set textwidth=100
set showmatch	
set errorbells
set visualbell
 
set hlsearch
set smartcase
set ignorecase
set incsearch	
 
set autoindent
set expandtab	       
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4
 
set ruler	
 
set undolevels=1000
set backspace=indent,eol,start	

execute pathogen#infect()
"au FileType javascript call JavaScriptFold()

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jscs', 'jsxhint']

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

hi CtrlSpaceSelected term=reverse ctermfg=187  ctermbg=23  cterm=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244  ctermbg=232 cterm=NONE
hi CtrlSpaceSearch   ctermfg=220  ctermbg=NONE cterm=bold
hi CtrlSpaceStatus   ctermfg=230  ctermbg=234  cterm=NONE
set hidden

" Set Ctrl-P to show match at top of list instead of at bottom, which is so
" stupid that it's not default
let g:ctrlp_match_window_reversed = 0

" Tell Ctrl-P to keep the current VIM working directory when starting a
" search, another really stupid non default
let g:ctrlp_working_path_mode = 0

" Ctrl-P ignore target dirs so VIM doesn't have to! Yay!
let g:ctrlp_custom_ignore = {
     \ 'dir': 'public\-build$\|dist$\|\.git$\|\.hg$\|\.svn$\|target$\|built$\|.build$\|node_modules\|\.sass-cache\|locallib$\|log$|vendor$',
     \ 'file': '\.ttc$',
    \ }
let g:ctrlspace_ignored_files = '\v(tmp|temp|cache|node_modules|components|wp-admin|wp-includes)[\/]'
"
" Fix ctrl-p's mixed mode https://github.com/kien/ctrlp.vim/issues/556
let g:ctrlp_extensions = ['mixed']
nnoremap <c-p> :CtrlPMixed<cr>

" Set up some custom ignores
"call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
    "\ 'ignore_pattern', join([
    "\ '\.git\|\.hg\|\.svn\|target\|built\|.build\|node_modules\|\.sass-cache',
    "\ '\.ttc$',
    "\ ], '\|'))
"Open multiplely selected files in a tab by default
let g:ctrlp_open_multi = '10t'
let g:ctrlspace_save_workspace_on_exit = 1
let g:ctrlspace_load_last_workspace_on_start =1
nmap <F8> :TagbarToggle<CR>

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" jsBeautify <leader>ff
nnoremap <leader>ff :%!js-beautify -j -q -B -f -<CR>

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML
