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
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jeetsukumaran/vim-buffergator'
" The following are needed for vim-build-tools-wrapper
"Plugin 'LucHermitte/lh-vim-lib'
"Plugin 'LucHermitte/lh-dev'
"Plugin 'LucHermitte/SearchInRuntime'
"Plugin 'LucHermitte/vim-build-tools-wrapper'
"Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'yegappan/grep'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/SearchComplete'
"" colorschemes
Plugin 'tomasr/molokai'
"Plugin 'freeo/vim-kalisi'
"Plugin 'altercation/vim-colors-solarized'

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

let g:netrw_liststyle = 3
" Highlight column and line of the cursor
set cursorcolumn cursorline
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

"fold based on indent
set foldmethod=indent

" set completion in the command line via tab
set wildmenu
set wildmode=longest:full,full

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

" Enable mouse support for all modes
set mouse=a

set tabstop=3
set softtabstop=3
set shiftwidth=3
set expandtab

" Close buffer with ctrl-w
noremap <C-w> :bd<cr>

" Change windows with ctrl-j and ctrl-k
nnoremap <C-J> <C-W><C-L>
nnoremap <C-K> <C-W><C-H>

" Highlight characters that go over the 80th character
"match ErrorMsg '\%>80v.\+'

""""""""""""""""""""""
"
" NERDCommenter settings:
"
""""""""""""""""""""""

filetype plugin on

""""""""""""""""""""""
"
" YouCompleteMe settings:
"
""""""""""""""""""""""

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

""""""""""""""""""""""
"
" buffergator settings:
"
""""""""""""""""""""""

let g:buffergator_sort_regime = "mru"

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings
let g:buffergator_suppress_keymaps = 1

" ctrl+b to go to the previous buffer open
nmap <C-b> :BuffergatorMruCyclePrev<cr>
" Before I was using this one
"nmap <leader>kk :BuffergatorMruCyclePrev<cr>

" ctrl+n to go to the next buffer open
nmap <C-n> :BuffergatorMruCycleNext<cr>
" Before I was using this one
" nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" View the entire list of buffers open
" nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
"nmap <leader>T :enew<cr>
"nmap <leader>bq :bp <BAR> bd #<cr>

""""""""""""""""""""""
"
" CtrlP settings:
"
""""""""""""""""""""""

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|doc)$',
  \ 'file': '\v\.(exe|zip|swp|lo|la|o|so|dll|png|jpg|jpeg)$',
\}

" It will look at the nearest file it finds.
let g:ctrlp_working_path_mode = 'r'

" Set the number of results.
let g:ctrlp_match_window = 'min:2,max:100'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

""""""""""""""""""""""
"
" colorscheme settings:
"
""""""""""""""""""""""

" enable 256 colors
set t_Co=256

""" kalisi
"colorscheme kalisi

""" solarized
"colorscheme solarized
"let g:solarized_termcolors=256

"" molokai
colorscheme molokai
let g:rehash256 = 1

" dark background FTW
set background=dark

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
" Always show the statusbar
set laststatus=2
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
" change colorscheme to use the correct one
let g:airline_theme = 'molokai'
let g:airline_powerline_fonts = 1

""""""""""""""""""""""
"
" NERDTree settings:
"
""""""""""""""""""""""

" open NERDTree automatically when vim starts up
"autocmd vimenter * NERDTree
" let NERDTree shows hidden files by default
"let g:NERDTreeShowHidden=1
" i like it on the right side of the screen
"let g:NERDTreeWinPos = "right"
