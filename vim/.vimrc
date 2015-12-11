" [ /* vundle ]
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'maciakl/vim-neatstatus'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
call vundle#end()
" [ */ vundle ]

" [ /* syntax highlighting and enable filetype stuff ]
syntax enable
filetype plugin indent on
" [ */ syntax highlighting and enable filetype stuff ]

" [ /* solarized ]
set t_Co=16
set background=dark
colorscheme solarized
" [ */ solarized ]

" [ /* tabbing and indentation ]
"set autoindent        " carry indent over to new lines
set cindent           " c style indent, might conflict with filetype indent
set shiftwidth=2      " two spaces per indent
set tabstop=2         " number of spaces per tab when viewing
set softtabstop=2     " number of spaces per tab when inserting
set expandtab         " sub spaces for tabs
set smarttab          " make tab key obey indent rules specified above
" [ */ tabbing and indentation ]

" [ /* othree/javascript-libraries-syntax.vim ]
let g:used_javascript_libs='underscore,jquery,angularjs,angularui'
" [ */ othree/javascript-libraries-syntax.vim ]

" [ /* window default ]
set lines=49 columns=85
set guifont=Monospace\ 14
" [ */ window default ]

" [ /* folding ]
set foldmethod=marker
set foldmarker=/*,*/
" [ */ folding ]

" [ /* commands and mappings ]
function! NerdTreeToggle()
    NERDTreeToggle
    wincmd p
    q
endfunction

nmap G Gzz
nmap } }zz
nmap { {zz
map <F5> :NERDTreeToggle<CR>
map <F6> :call NerdTreeToggle()<CR>

" Press Space to turn off highlighting and clear any message already displayed
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

command Q q
command WQ wq
command Wq wq
command W w
" [ */ commands and mappings ]

" [ /* backup settings  ]
if has("vms")
    " Do not keep a backup file, use versions instead
    set nobackup		
else
    " Keep a backup file
    set backup		
endif

set backupdir=~/.vimtmp
set directory=~/.vimtmp
" [ */ backup settings  ]

" [ /* vim settings ]
set encoding=utf-8
set history=50
set hlsearch
set incsearch

" Display line number at the side
set number
set numberwidth=1

" Remove auto commenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Display incomplete commands
set showcmd

" Set omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete
" [ */ vim settings ]

" [ /* jsx settings  ]
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
" [ */ jsx settings  ]
