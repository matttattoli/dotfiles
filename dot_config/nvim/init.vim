if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin()
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  
  Plug 'vim-airline/vim-airline'

  Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()



:set number relativenumber

:augroup numbertoggle
:   autocmd!
:   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:   autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
:augroup END


colorscheme onehalfdark
let g:airline_theme='onehalfdark'

set shell=/usr/bin/fish\ -i

set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a
