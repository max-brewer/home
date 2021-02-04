set encoding=utf-8

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Configure plugins
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'trapd00r/vim-ansicolors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

call plug#end()

" Configure vim
set nocompatible
filetype plugin on
syntax enable
set number
set relativenumber

"" Configure airline
let g:airline_powerline_fonts = 1

"" Set solarized colours
set background=dark
colorscheme solarized

"" Configure VimWiki
let g:vimwiki_list = [
			\ { 'path': '~/notes/', 'syntax': 'markdown', 'ext':'.md' },
			\ ]

