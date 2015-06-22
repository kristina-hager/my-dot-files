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

" command Insclog to insert javascript console.log line
:command Iclog :normal oconsole.log("replaceme");<ESC>

" make vim add a matching brace and auto-indent
" inoremap {<cr> {<cr>}<c-o>O<tab>
" inoremap [<cr> [<cr>]<c-o>O<tab>
" inoremap (<cr> (<cr>)<c-o>O<tab>
" don't need to tab with sensible vim's autoindent
inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

" source in work specific settings, last wins
:if !empty(glob("~/.vim/work_vimrc"))
:   source ~/.vim/work_vimrc
:endif

