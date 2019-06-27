set background=dark

set nocompatible              " required
filetype off                  " required

set mouse=a		      " 鼠标点击改变插入点
set t_Co=256
set foldcolumn=3

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'Valloric/YouCompleteMe'

" New Added 2019/6/20

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
let g:ycm_key_invoke_completion = ''
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_goto_buffer_command = 'horizontal-split'
let g:ycm_seed_identifiers_with_syntax=1
map <F2> :YcmCompleter GoTo<CR>                           # 按F2跳转到定义处
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'

set encoding=utf-8

