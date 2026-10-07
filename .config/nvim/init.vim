call plug#begin()
  Plug '~/.nvim-plugins/junegunn--fzf.vim'

  Plug '~/.nvim-plugins/vim-airline/vim-airline'

  Plug '~/.nvim-plugins/sonph/onehalf', {'rtp': 'vim/'}
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
set clipboard+=unnamedplus
