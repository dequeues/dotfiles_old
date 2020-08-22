set encoding=UTF-8
set number
set expandtab
set wrap
set wrapmargin=8
set linebreak
set showbreak=↪
set t_Co=256

""" Tab stuff
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

if &term =~ '256color'
        set t_ut=
    endif

"Enable mouse click for nvim
set mouse=a
"Fix cursor replacement after closing nvim
set guicursor=
"Shift + Tab does inverse tab
inoremap <S-Tab> <C-d>

"See invisible characters
set list
set listchars=tab:→\ ,trail:+,eol:¬


""" minpac
packadd minpac
if exists('*minpac#init')
  call minpac#init()

  call minpac#add('junegunn/rainbow_parentheses.vim', {'type': 'opt'})
  call minpac#add('scrooloose/nerdtree')
  call minpac#add('Yggdroot/indentLine')
  call minpac#add('editorconfig/editorconfig-vim')
  call minpac#add('frazrepo/vim-rainbow')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('tiagofumo/vim-nerdtree-syntax-highlight')

  " Themes and stuff
  call minpac#add('ghifarit53/tokyonight-vim')
  call minpac#add('itchyny/lightline.vim')

endif

" NERDTree Toggle
map <C-n> :NERDTreeToggle<CR>

command! PackUpdate call minpac#update('', {'do': 'call minpac#status()'})

let g:rainbow_active = 1

let g:indentLine_char = '▏'
let g:indentLine_setColors = 1

set termguicolors
let g:airline_theme='tokyonight'
let g:lightline = {'colorscheme': 'tokyonight'}
let g:tokyonight_style = 'night'

colorscheme tokyonight
