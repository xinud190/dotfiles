
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"         _                    
"  __   _(_)_ __ ___  _ __ ___ 
"  \ \ / / | '_ ` _ \| '__/ __|
"   \ V /| | | | | | | | | (__ 
"  (_)_/ |_|_| |_| |_|_|  \___|
" 
" David Beaupre
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()     " required, all plugins must appear after this line.
"{{ The Basics }}
    Plugin 'gmarik/Vundle.vim'							" Vundle
    Plugin 'vim-airline/vim-airline'					" Airline
    Plugin 'vim-airline/vim-airline-themes'				" Airline Themes

"{{ File management }}
    Plugin 'vifm/vifm.vim'                               " Vifm
    Plugin 'scrooloose/nerdtree'                         " Nerdtree
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
    Plugin 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
    Plugin 'junegunn/fzf'
  
"{{ Productivity }}
    Plugin 'vimwiki/vimwiki'                             " VimWiki 
    Plugin 'mhinz/vim-signify'
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-rhubarb'
    Plugin 'junegunn/gv.vim'

"{{ Tim Pope Plugins }}
    Plugin 'tpope/vim-surround'                          " Change surrounding marks

"{{ Syntax Highlighting and Colors }}
    Plugin 'vim-python/python-syntax'
    Plugin 'ap/vim-css-color'                           " Color previews for CSS
    Plugin 'severin-lemaignan/vim-minimap'
    Plugin 'dracula/vim',{'name':'dracula'}
    Plugin 'godlygeek/tabular'

call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch                   " Incremental search
set nobackup                    " No auto backups
set noswapfile                  " No swap
set t_Co=256                    " Set if term supports 256 colors.
set number relativenumber       " Display line numbers
set nu rnu
set colorcolumn=81
set cursorline
syntax enable
let g:rehash256 = 1

" Always show statusline
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap ESC to ii
:imap ii <Esc>

"Disable arrow keys in Normal mode
no <Up> <Nop>
no <Down> <Nop>
no <Left> <Nop>
no <Right> <Nop>

"Disable arrow keys in Insert mode
ino <Up> <Nop>
ino <Down> <Nop>
ino <Left> <Nop>
ino <Right> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The lightline.vim theme
let g:lightline = {
      \ 'colorscheme': 'darcula',
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
" set rtp+=/usr/local/lib/python3.6/dist-packages/powerline/bindings/vim

let g:Powerline_symbols                  = 'unicode'
let g:Powerline_theme                    = 'long'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts            = 1
let g:airline_theme                      = 'dracula'

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable  = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowLineNumbers       = 1
let NERDTreeShowHidden            = 1
let NERDTreeMinimalUI             = 1
let NERDTreeWinPos                = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Minimap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:minimap_show   = '<leader>mm'
let g:minimap_update = '<leader>mu'
let g:minimap_close  = '<leader>mc'
let g:minimap_toggle = '<leader>mt'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Signify
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
" let g:signify_sign_show_count = 0
" let g:signify_sign_show_text = 1

" Jump though hunks
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
nmap <leader>gJ 9999<leader>gJ
nmap <leader>gK 9999<leader>gk

" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000
" highlight SignifySignChange ctermfg=black ctermbg=yellow guifg=#000000 guibg=#ffff00

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vifm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme dracula
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mouse Scrolling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set mouse=nicr

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap   <silent>   <C-Left>    :vertical   resize   +3<CR>
noremap   <silent>   <C-Right>   :vertical   resize   -3<CR>
noremap   <silent>   <C-Up>      :resize     +3<CR>
noremap   <silent>   <C-Down>    :resize     -3<CR>

let g:minimap_highlight='Visual'

" TAB Movement
nnoremap tn      :tabnew<Space>
nnoremap tk      :tabnext<CR>
nnoremap <TAB>   :tabnext<CR>
nnoremap tj      :tabprev<CR>
nnoremap <S-TAB> :tabprev<CR>
nnoremap th      :tabfirst<CR>
nnoremap tl      :tablast<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Personal Customizations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>v :e ~/.vimrc<CR>
map <Leader>V :tabnew ~/.vimrc<CR>
map <Leader>U :source ~/.vimrc<CR>


set clipboard=unnamedplus

" Copy Paste with System Buffer
" Ensure GVIM is installed
vnoremap <C-c>  "*y :let @+=@*<CR>
" map <C-V>  "+P

let g:python_highlight_all = 1
syntax on

