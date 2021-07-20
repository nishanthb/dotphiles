" :colorscheme murphy
:colorscheme peachpuff
:set tabstop=4 bs=2
nmap <C-H> :tabprev<CR>
nmap <C-L> :tabnext<CR>

filetype plugin on
filetype plugin indent on
syntax on
" set mouse=a

" Brackets Highlighting Colors
hi MatchParen cterm=none ctermbg=black ctermfg=white

" Errors/BadSpellings Higlighing Colors
:highlight clear SpellBad

" :set number
" :set noswapfile


" Flash screen instead of beep sound
set visualbell
" Change how vim represents characters on the screen
set encoding=utf-8
" Set the encoding of files written
set fileencoding=utf-8

set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
set backspace=indent,eol,start

" complete omnifunc
"set ofu=syntaxcomplete#Complete
set ofu=go#complete#Complete


" go-vim - https://github.com/fatih/vim-go-tutorial#struct-split-and-join
" alternatively use coq.vim which requires yarn too
execute pathogen#infect()
" auto format and import
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports" " run goimports on save
" status line type sigs
let g:go_auto_type_info = 1 " get signature under cursor
" use the lsp server. omnifunc calls cx-xo will call this
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
"au filetype go inoremap <buffer> . .<C-x><C-o> " cxco on .
" go-vim syntax highlight
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1


" NERDTree plugin specific commands
" :nnoremap <C-g> :NERDTreeToggle<CR>

" vim-fuGITive
":Gstatus        # run `git status`
"" netrw  -default browser
" supports :Vexplore, :Sexplore, :Explore (or :Vex :Sex)
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1 " open new files in 1 - horiz split, 2 - vert, 3 - tab, 4 - prev window
let g:netrw_winsize = 25 " 25% of page width

" generic vim commands
" :sp path/to/file.txt " open file in horiz split
" :vs  path/to/file.txt " open file in vert split
" :tabnew file.ext " open in new tab
" ctags -R .
" :find path/to/file.txt
" :! ls -lF
"
" Auto closing pairs
":so ~/.autopair.vim


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
