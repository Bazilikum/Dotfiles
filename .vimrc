" .vimrc
"
"set to support 256 colors
set t_Co=256

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mkitt/tabline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'chrisbra/SudoEdit.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'romainl/Apprentice'
Plugin 'godlygeek/csapprox'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList          - list configured plugins
" " :PluginInstall(!)    - install (update) plugins
" " :PluginSearch(!) foo - search (or refresh cache first) for foo
" " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" set line numbers on. to turn off use nonumber
set number

" set color scheme
colorscheme desert

" set syntax on
syntax on

" set to always show tabs
set showtabline=2

" shortcut to nerdtree toggle
map <C-n> :NERDTreeToggle<CR>

" shortcut ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMixed'

" set wrapping to false
set nowrap 

" nerdtree close on file open
let NERDTreeQuitOnOpen=1

" ycm fallback file
" /home/arojtblat/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm 
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" ycm goto shortcut
nnoremap <leader>] :YcmCompleter GoTo<CR>

" ycm auto close preview window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" autoload upon vimrc change
augroup reload_vimrc " {
	autocmd!
        autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
