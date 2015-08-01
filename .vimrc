" Kristina's vimrc


" Install plugin manager
execute pathogen#infect()
syntax on
filetype plugin indent on

" get rid of vi compatibility
set nocompatible

" modelines have security exploits i hear
set modelines=0


" set font and colors
set t_Co=256
set gfn=Menlo:h13
colorscheme ir_black

" show line numbers
set number
set ruler

set autoindent
filetype plugin indent on

" tabbing stuff
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" \pl:  i.e. line of ### matching prev line length
nnoremap <leader>pl yypVr#

" \dl : line of ----- matching prev line length
nnoremap <leader>dl yypVr-

" command Icl to insert javascript console.log line
command -nargs=* Icl :normal oconsole.log(<args>);<ESC>

" Idd to insert data dumper w/ one argument, e.g. :Idd \$foo
command -nargs=1 Idd :normal ouse Data::Dumper;<ENTER>print Dumper(<args>);<ESC>

" make vim add a matching brace and auto-indent
" inoremap {<cr> {<cr>}<c-o>O<tab>
" inoremap [<cr> [<cr>]<c-o>O<tab>
" inoremap (<cr> (<cr>)<c-o>O<tab>
" don't need to tab with sensible vim's autoindent
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

" recommended syntastic defaults
" faq: https://github.com/scrooloose/syntastic#faqcheckers
" and wiki on checkers: https://github.com/scrooloose/syntastic/wiki/%28v3.6.0%29---Syntax-Checkers
" since I have not really pushed this
" note that perl checkers are disabled by default for security reasons, to enable:
" let g:syntastic_enable_perl_checker = 1
" to set checker by filetype:
" let g:syntastic_<filetype>_checkers = ['<checker-name>']
" NOTE that I have not really tested this plugin yet other than that it is
" installed
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree prefs
" open nerdtree if vi opened w/o a file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" automatically open nerdtree when vim starts
" autocmd vimenter * NERDTree
" open NERDTree with ctrl-n
map <C-n> :NERDTreeToggle<CR>
" show bookmarks by default
let NERDTreeShowBookmarks=1
 

" source in work specific settings, last wins
:if !empty(glob("~/.vim/work_vimrc"))
:   source ~/.vim/work_vimrc
:endif

