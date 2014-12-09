""""""""""""""""""""""
"
" Vundle settings:
"
""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'freeo/vim-kalisi'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""
"
" General settings:
"
""""""""""""""""""""""
" Indent automatically depending on filetype
filetype indent on
set autoindent

" Turn on line numbering. Turn it off with "set nonu" 
set number

" Set syntax on
syntax on

" Case insensitive search
set ic

" Higlhight search
set hls

" Set working directory to the current file
set autochdir

" Wrap text instead of being on one line
set lbr

" enable mouse support for all modes
set mouse=a

set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

""""""""""""""""""""""
"
" vim-airline settings:
"
""""""""""""""""""""""
" In order to have the vim-airline working you have to download patched fonts
" that you can find here https://github.com/powerline/fonts
" extract the fonts you use in ~/.fonts/ and give the following command
" fc-cache -vf ~/.fonts/
" Last but not least, choose one of the installed fonts as the default one
" for your terminal because vim will use it
"
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" use kalisi theme
let g:airline_theme = 'kalisi'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""
"
" buffergator settings:
"
""""""""""""""""""""""
" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

""""""""""""""""""""""
"
" CtrlP settings:
"
""""""""""""""""""""""
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)||obj|\_site)$',
  \ 'file': '\v\.(exe|am|in|zip|swp|so|dll|png|jpg|jpeg)$',
\}

" It will look at the nearest file it finds.
let g:ctrlp_working_path_mode = '0'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

""""""""""""""""""""""
"
" kalisi settings:
"
""""""""""""""""""""""
set t_Co=256
colorscheme kalisi
" set background=light
" or
set background=dark
" if you don't set the background, the light theme will be used

""""""""""""""""""""""
"
" NERDTree settings:
"
""""""""""""""""""""""
" open NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
" let NERDTree shows hidden files by default
let g:NERDTreeShowHidden=1
" i like it on the right side of the screen
let g:NERDTreeWinPos = "right"
