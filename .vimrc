set nocompatible
filetype off
syntax enable
function! EnableSolarized()
  set background=dark
  colorscheme solarized
endfunction
function! DisableSolarized()
  set background=dark
  colorscheme default
endfunction
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-rails'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/gist-vim'
Plugin 'chilicuil/vim-sprunge'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'tyru/open-browser.vim'
Plugin 'tpope/vim-sensible'
Plugin 'othree/html5.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-bundler'
Plugin 'christoomey/vim-tmux-navigator'
call vundle#end()            " required
filetype plugin indent on    " required
set softtabstop=0
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab
let mapleader=','
call togglebg#map("<F5>")
nmap <Leader>s :call EnableSolarized()<CR>
nmap <Leader>d :call DisableSolarized()<CR>
nmap <Leader>o :set nopaste<CR>
nmap <Leader>p :set paste<CR>
map <Leader>n i^M^[k$
map <Leader>tn i^M  ^[k$
nmap <F8> :TagbarToggle<CR>
nmap <C-o> o<Esc>
