"Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

"Plugins
call vundle#begin('~/vim/bundle')
    Plugin 'preservim/nerdtree'
    Plugin 'sonph/onehalf', {'rtp': 'vim/'}
    Plugin 'neoclide/vim-jsx-improve'
call vundle#end()
filetype plugin indent on

call plug#begin()
    Plug 'junegunn/goyo.vim'
    Plug 'ajmwagar/vim-emoticons'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'sheerun/vim-polyglot' 
call plug#end()


"General
let mapleader = ","
filetype plugin on
filetype indent on
set backspace=eol,start,indent
set cmdheight=1
set encoding=utf8
set ffs=unix,dos,mac "standard file type
set hlsearch
set ignorecase
set incsearch
set langmenu=en
set magic
set mat=2
set relativenumber
set ruler
set showmatch
set smartcase
set whichwrap+=<,>,h,l
set wildmenu

"Syntax highlight
colorscheme onehalfdark
syntax enable
let g:javascript_plugin_jsdoc = 1
let g:deoplete#enable_at_startup = 1
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.js'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
        \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

"NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>
autocmd BufEnter NERD_tree_* | execute 'normal R'

set laststatus=2
set statusline=\ %{FugitiveStatusline()}%{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c 
let g:lightline = {
          \ 'colorscheme': 'darcula',
      \ 'active': {
          \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
          \   'gitbranch': 'FugitiveHead'
      \ },
      \ }
"Coc
let g:coc_global_extensions = [
      \ 'coc-tsserver'
  \ ]

"Backup
set nobackup
set nowb
set noswapfile


"Tabs & indent
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set wrap

"Autoexpand tags
inoremap (; (<CR>);<C-c>O
inoremap (, (<CR>),<C-c>O
inoremap {; {<CR>};<C-c>O
inoremap {, {<CR>},<C-c>O
inoremap [; [<CR>];<C-c>O
inoremap [, [<CR>],<C-c>O]]}}))

"Windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"jj kk  esc
imap jj <Esc>
imap kk <Esc>

"Tabs
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap th :tabnext<CR>
nnoremap tl :tabprev<CR>"""
nnoremap tt  :tabedit<CR>
nnoremap tn  :tabnew<CR>
nnoremap tm  :tabm<CR>
nnoremap td  :tabclose<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

"Functions
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
        return ''
endfunction
