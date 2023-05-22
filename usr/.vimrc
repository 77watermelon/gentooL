
call plug#begin()

Plug 'morhetz/gruvbox'

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=["ssnippets"]

call plug#end()



let g:gruvbox_italic=1


autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax enable
nnoremap \\ :noh<return>

let mapleader = ','
let g:mapleader = ','

set title
set showcmd
set number
set noerrorbells
set novisualbell
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

"show “invisible” characters
set lcs=tab:▸\ ,trail:·,nbsp:_
set list

set hlsearch

set incsearch

nnoremap <leader>n :NERDTreeFocus<CR>


set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set cursorline

"Optimize for fast terminal connections
set ttyfast

" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure

" Use the OS clipboard by default
if has('clipboard')
  if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
  else
    set clipboard=unnamed
  endif
endif


" Enhance command-line completion
set wildmenu

" Ignore case of searches
set ignorecase

" When searching try to be smart about cases
set smartcase

set noswapfile
set nobackup
set encoding=utf8

set autoindent
set smartindent
set noexpandtab
set smarttab
set shiftwidth=2
set tabstop=2

set incsearch
set wrapscan
set magic
set maxmempattern=1000


"Makes comments italic
if has('gui_running')

else
if empty($TMUX) && empty($SSH_TTY) && empty($SUDO_USER)
    let &t_ZH="\e[3m"
    let &t_ZR="\e[23m"
    highlight Comment cterm=italic
  endif
endif


"existance



"Pressing ,ss will toggle and untoggle spell checking
"map <leader>ss :set spell spelllang=en_us
noremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
map <leader>ss :setlocal spell!<CR>


" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader><leader> z=




 hi clear SpellBad                                                
 hi SpellBad cterm=underline                                      
 hi clear SpellRare                                               
 hi SpellRare cterm=underline                                     
 hi clear SpellCap                                                
 hi SpellCap cterm=underline                                      
 hi clear SpellLocal
 hi SpellLocal cterm=underline
