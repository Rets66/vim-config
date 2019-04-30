" ============ Infomation ============
" Auher : Rets66
" Editor : nvim
" Manager : dein.vim
" ====================================


" ============ Setting of dein.vim ============
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Setting
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " ============Plogins==============
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('davidhalter/jedi-vim')  " python補完機能
                                         " Opening help -> ':help jedi-vim'
  " ============ TOML file ============
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " End of the setting
  call dein#end()
  call dein#save_state()
endif
" ============ End of dein.vim ============


filetype plugin indent on

syntax on
color dracula

" Print number
set number

" Tab size
set tabstop=2

" Use Visual Bell
set visualbell

" Show Title
set title

" Setting Language
let $LANG = 'en_US'

" Encoding Setting
set encoding=utf-8

" Show space
set list

" Ignore text case
set ignorecase

" Print Time function g:Data()
"  return strftime("%x %H:%M")
" endfunction
" set statusline+=%=\ \%{g:Data()}

" Greeting Function
function Hello()
  echo "Hello!"
endfunction
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif