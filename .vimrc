"""""""""""""""""""""""""""""""""""""""
" Resources
"""""""""""""""""""""""""""""""""""""""

" Vim Cheat Sheet for Programmers: http://michael.peopleofhonoronly.com/vim/
" Vim Chinese Documentation: http://vimcdoc.sourceforge.net/doc/help.html

"""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""

" Vundle.Vim
" Vundle, the plug-in manager for Vim
" https://github.com/VundleVim/Vundle.vim

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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

"""""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""""

" vim-plug
" Minimalist Vim Plugin Manager
" https://github.com/junegunn/vim-plug
" Install
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""

" always show line numbers
set number

" don't highlight the current line (useful for quick orientation, but also slow to redraw)
"set nocursorline

" highlight current line
"set cursorline

" highlight current column
"set cursorcolumn

" always show current position
set ruler

" enable syntax highlighting
syntax enable

" enable 256 colors palette
" terminal Color
" 开启256色支持
set t_Co=256

" set utf8 as standard encoding and en_US as the standard language
set encoding=utf8


set listchars=tab:>-,trail:-
set list

""""""""""""""""""""""""""""""""""""""""
" Search
""""""""""""""""""""""""""""""""""""""""

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" A tab is four spaces
set tabstop=4

" Number of spaces to use for autoindenting
" 设置格式化时制表符占用空格数
set shiftwidth=4

" don't wrap lines
" 禁止折行
set nowrap

""""""""""""""""""""""""""""""""""""""""
" Themes
""""""""""""""""""""""""""""""""""""""""

" Solarized
Plugin 'Solarized'
"colorscheme Solarized

" molokai
Plugin 'molokai'
colorscheme molokai

" dracula
"Plugin 'dracula/vim'
"colorscheme dracula

""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""

" winmanager
" A windows style IDE for Vim 6.0
" https://github.com/vim-scripts/winmanager
" :help winmanager
" wm
Plugin 'vim-scripts/winmanager'
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<CR>

" taglist
" Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
" https://github.com/vim-scripts/taglist.vim
" :help taglist
Plugin 'taglist.vim'

" Tagbar: a class outline viewer for Vim
" :help tagbar

" :TagbarToggle
" tt
Plugin 'majutsushi/tagbar'
nmap tt :TagbarToggle<CR>

" vim-airlinne
" lean & mean status/tabline for vim that's light as air
" https://github.com/vim-airline/vim-airline
" :help airline
Plugin 'vim-airline/vim-airline'

" vim-airline-themes
" A collection of themes for vim-airline
" https://github.com/vim-airline/vim-airline-themes
Plugin 'vim-airline/vim-airline-themes'

" ctrlp.vim
" Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
" https://github.com/ctrlpvim/ctrlp.vim
" :help CtrlP
Plugin 'ctrlp.vim'

" NERDTree
" A tree explorer plugin for vim.
" https://github.com/scrooloose/nerdtree
" :help NERDTree
" nt
Plugin 'scrooloose/nerdtree'
nmap nt :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERD Commenter
" Vim plugin for intensely orgasmic commenting
" https://github.com/scrooloose/nerdcommenter
" :help NERDCommenter
" 常用快捷键
" <leader> \

" <leader>cc 注释
" <leader>c<space> 注释/取消注释，自动判断
" <leader>cs 使用
"                /*
"                 * content
"                 */
"                 注释
" <leader>ca 切换 /* content */ or // content
" <leader>cu 取消注释
" <leader>cy 先拷贝在注释，

Plugin 'scrooloose/nerdcommenter'
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" syntastic
" Syntax checking hacks for vim
" https://github.com/vim-syntastic/syntastic
" :help syntastic
Plugin 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe
" A code-completion engine for Vim
" https://github.com/Valloric/YouCompleteMe
" :help YouCompleteMe
Plugin 'Valloric/YouCompleteMe'

" vim-multiple-cursors
" True Sublime Text style multiple selections for Vim
" https://github.com/terryma/vim-multiple-cursors
" :help vim-multiple-cursors
Plugin 'terryma/vim-multiple-cursors'

" surround.vim
" surround.vim: quoting/parenthesizing made simple
" https://github.com/tpope/vim-surround
" :help surround
Plugin 'tpope/vim-surround'

" Indentline
" A vim plugin to display the indention levels with thin vertical lines
" https://github.com/Yggdroot/indentLine
" :help indentLine
Plugin 'Yggdroot/indentLine'
let g:indentLine_enabled = 1

" Vim Better Whitespace Plugin
" Better whitespace highlighting for Vim
" https://github.com/ntpeters/vim-better-whitespace
" :help better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

" Coloresque
" css/less/sass/html color preview for vim
" https://github.com/gko/vim-coloresque
Plugin 'gorodinskiy/vim-coloresque'

" Emmet-vim
" emmet-vim is a vim plug-in which provides support for expanding abbreviations similar to emmet.
" https://github.com/mattn/emmet-vim
Plugin 'mattn/emmet-vim'

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" phpcomplete
Plugin 'phpcomplete.vim'


call plug#begin()

" vim-gitgutter
" A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks.
" https://github.com/airblade/vim-gitgutter
Plug 'airblade/vim-gitgutter'

" vim-easy-align
" A Vim alignment plugin
" https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Phpactor
" PHP completion, refactoring and introspection tool.
" https://github.com/phpactor/phpactor
"Plug 'phpactor/phpactor', {'for': 'php', 'do': 'composer install'}

" Deoplete
" Dark powered asynchronous completion framework for neovim/Vim8
" https://github.com/Shougo/deoplete.nvim
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
set runtimepath+=~/.vim/plugged/deoplete.nvim/
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('auto_complete_delay', 200)

call plug#end()

