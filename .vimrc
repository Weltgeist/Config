set nocompatible "required
filetype off     "required
"Line Numbering
set nu
"System Clipboard-Comment as needed.
set clipboard=unnamed
"Vim in the Shell
"set editing-mode vi ""to put ~/.inputrc

"set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/.vim/plugin/')
"le Vundle manage Vundle required
Plugin 'gmarick/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Space fold
Plugin 'tmhedberg/SimpylFold'

"Python Specific indent
Plugin 'vim-scripts/indentpython.vim'

"AutoComplete
Bundle 'Valloric/YouCompleteMe' 

"Syntax
Plugin 'vim-syntastic/syntastic'

"P8
Plugin 'nvie/vim-flake8'

"Color
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'


"File Browsing

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

"Super Searching CTRL-P

Plugin 'kien/ctrlp.vim'

"Git integration

Plugin 'tpope/vim-fugitive'

"Power Line

Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

".Enable folding with spacebar

set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

" Enable folding with spacebar

nnoremap <space> za

"Default split

set splitbelow
set splitright

"split navigation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set encoding=utf-8
"let g:ycm_uce_clangd=0

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"      activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"            execfile(activate_this, dict(__file__=activate_this))
"EOF

"Color Scheme selector
if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
endif

call togglebg#map("<F5>")


"File Browsing Options

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


"AutoComplete Options
                  
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
    \ let python_highlight_all=1
    \ syntax on

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
