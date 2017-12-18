set nocp
set hlsearch
set ic
set nu
set ai
set si
set tabstop=4
set expandtab
set shiftwidth=4
set backspace=indent,eol,start
colorscheme molokai
syntax on

" open ctag in tab/vertical split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <leader><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

"""""""""""""""""""""""""""""""""""""""""""
"              Vundle Shit                "
"""""""""""""""""""""""""""""""""""""""""""

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" YouCompleteMe for code completion
Plugin 'Valloric/YouCompleteMe'

" Git neatness
Plugin 'tpope/vim-fugitive'

" Cool status lines
Plugin 'bling/vim-airline'

" Now we can turn our filetype functionality back on
filetype plugin indent on
