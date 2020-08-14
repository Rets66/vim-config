" Infomation
" Auher : Rets66
" Editor : Neovim
" Manager : dein.vim


" Setting of dein.vim
if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Setting
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  " Plogins
  " call dein#add('lervag/vimtex')
  call dein#add('Shougo/unite.vim')
  call dein#add('bronson/vim-trailing-whitespace')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-fugitive')              " Controler of git
  call dein#add('airblade/vim-gitgutter')          " Print diff
  call dein#add('scrooloose/nerdtree')
  call dein#add('Townk/vim-autoclose')
  call dein#add('vim-scripts/vim-auto-save')
  call dein#add('junegunn/fzf', {'build': './install --all'})
  call dein#add('junegunn/fzf.vim')
  "call dein#add('fatih/vim-go')
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app & yarn install"' })
  "call dein#add('mattn/emmet-vim')
  " TOML file
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " End of the setting
  call dein#end()
  call dein#save_state()
endif

" End of dein.vim


" Keymap
map <C-e> <Nop>
map <C-f> <Nop>
inoremap <C-f> <Esc>
cnoremap <C-f> <Esc>
cnoremap <C-a> <C-b>
vnoremap <C-f> <Esc>
tnoremap <C-f> <C-\><C-n>
nnoremap b :
nnoremap <silent> <C-e> :Files<CR>
nnoremap <silent> <C-n> :terminal<CR>

" Alias
cabbrev : vsb vert sbuffer
cabbrev : vterm vert terminal
cabbrev : bterm bo terminal
cabbrev : tterm top terminal

filetype plugin on

" General
set ttimeoutlen=50

" colorscheme
color dracula

" Syntax
syntax enable

" Print number
" set number

" Tab size
set sw=1
set tabstop=2

" Use Visual Bell
set visualbell

set cursorline
highlight cursorline cterm=bold
highlight cursorline cterm=underline

" Window complement
set wildmenu

" Show Title
set title

" clipboard
set clipboard+=unnamedplus

" Setting Language
let $LANG = 'en_US.UTF-8'

" Encoding Setting
set encoding=utf-8

" Show space
set list

" Ignore text case
set ignorecase

" Stop create swap file
set noswapfile

" Configure the split position
set splitbelow
set splitright

" Terminal Mode configure
autocmd TermOpen * setlocal norelativenumber
autocmd TermOpen * setlocal nonumber         " When term opens, stop number

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

" Plugin
" NERDTree
command Nd NERDTree
"autocmd vimenter * NERDTree
"let g:NERDTreeLimitedSyntax = 1
"let g:NERDTreeShowBookmarks=1
"let g:NERDTreeDirArrows = 1
"let g:webdevicons_conceal_nerdtree_brackets = 1
"let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:DevIconsEnableFoldersOpenClose = 1
"set guifont='font-hack-nerd-font'

" airline
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_theme = 'angr'

function! s:SetDefault(var, val)
  if !exists(a:var)
    execute 'let ' . a:var . '=' . string(a:val)
  endif
endfunction

"" Compilation is running and continuous compilation is on
"call s:SetDefault( 'g:airline#extensions#vimtex#continuous', "c")
"" Viewer is opened
"call s:SetDefault( 'g:airline#extensions#vimtex#viewer',     "v")
"let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_compiler_latexmk = {'continuous' : 0, 'options' : '-pdfdvi' }

" Latex
" To recognize all .tex file to latex
let g:tex_flavor='latex'

" vim-auto-save
let g:auto_save = 1
"let g:rainbow_active = 1

call map(dein#check_clean(), "delete(v:val, 'rf')")
