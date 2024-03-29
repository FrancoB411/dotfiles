" set compatible off so many plugins can work
set nocompatible


syntax on



" set nowrap
set encoding=utf8


" AUTO-INSTALL VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" VIM-PLUG
call plug#begin('~/.vim/plugged')
  Plug 'terryma/vim-multiple-cursors'
  Plug 'Olical/vim-enmasse'
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/vim-easy-align'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'gioele/vim-autoswap'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'mattn/emmet-vim'
  Plug 'moll/vim-bbye'
  Plug 'christoomey/vim-tmux-navigator'
  " Plug 'sukima/vim-emberlayout'
  
  " Snippets and Auto Complete
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'ervandew/supertab'

  Plug 'tpope/vim-dispatch'
  
  Plug 'justinmk/vim-sneak'
  Plug 'sjl/gundo.vim'
  Plug 'godlygeek/tabular'
  Plug 'wesQ3/vim-windowswap'

  "Search
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  
  " File Navigation
  Plug 'scrooloose/nerdtree'

  Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
  " Plug 'joukevandermaas/vim-ember-hbs'
 
  " Markdown / Writing
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'vim-scripts/fountain.vim'

  " Formatting / Syntax Highlighting
  Plug 'sheerun/vim-polyglot'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

" For vim-polyglot
syntax on

" display images automatically on buffer write 
let vim_markdown_preview_toggle=2
"
"format elm
let g:elm_format_autosave = 1

"toogle gundo undo tree
nnoremap <F5> :GundoToggle<CR>

" use comma as leader key
let mapleader=" "

" show line numbers
set nu

" Make it easy to use mouse for selecting, copy/paste and scroll...
set mouse=r

set autowriteall
au FocusLost * :wa
au FocusLost * silent! wa

" Make json files highlighted too
autocmd BufNewFile,BufRead *.json set ft=javascript

" Always show statusline
:set laststatus=2

" VIMCASTS...
set ts=2 sts=2 sw=2 expandtab

"source .vimrc with <leader> v
nnoremap <leader>v :source $MYVIMRC<CR>

" run current test
nnoremap <leader>r :Dispatch bin/rspec %<CR>

" dispatch async task
nnoremap <leader>d :Dispatch 


" TAB MADNESS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 0

" Disable the branch name
let g:airline#extensions#branch#enabled = 0

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:airline_section_b#enabled = 0
let g:airline#extensions#default#layout = [
      \ [ 'a', 'c' ],
      \ [ 'x', 'y', 'z', 'warning' ]
      \ ]

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



" Disable temp and backup files
set wildignore+=*.ico,*.ICO,backup/**,*.sql,*.dump,*.tmp,*.min.js
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=coverage/**,tmp/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**
set wildignore+=node_modules/**/node_modules/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep,.gems/**,*~,._*



" HIGHLIGHTING
 
" Highlight current line
set cursorline

" Highlight all text matching the current search
set hlsearch

" Press Space to turn off highlighting and clear any displayed message
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>





" Map Ctl- h,j,k,l to navigate windows 
:nnoremap <C-H> <C-W>h
:nnoremap <C-J> <C-W>j
:nnoremap <C-K> <C-W>k
:nnoremap <C-L> <C-W>l

" auto reload files that changed on disk, not deleted files
set autoread



" FUZZY FINDER
 
" map <learder>t to FZF
:nnoremap <leader>t :FZF<CR>

" Use silver-searcher 
let g:ackprg = 'ag --nogroup --nocolor --column'

" Set fzf runtime path
set rtp+=/usr/local/opt/fzf

" Have fzf use ag
let $FZF_DEFAULT_COMMAND= 'ag -g ""'

" map close quickfix to <leader>c
:nnoremap <leader>c :cclose<CR>

command! -bang -complete=buffer -nargs=? Bd Bdelete<bang> <args>
let g:mustache_abbreviations = 1



let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<C-f>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
let g:UltiSnipsListSnippets="<C-tab>"

set clipboard=unnamed

" set code folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

" set vim swapfiles to .vim folder
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//



" NETRW

" open Netrw in current directory
:map :exp :NERDTreeFind<cr>

" Remove Netrw banner
let g:netrw_banner = 0

" Set Netrw to display in tree mode by default
let g:netrw_liststyle = 3

hi SpellBad ctermfg=000 guifg=#000000

" strip trailing whitespace on save
autocmd FileType c,cpp,java,js,yml,rb,hbs,php autocmd BufWritePre <buffer> %s/\s\+$//e

" auto format elixir files
autocmd BufWritePost *.exs silent :!mix format %
autocmd BufWritePost *.ex silent :!mix format %

" auto formats rust files
autocmd BufWritePost *.rs silent :!rustup run stable rustfmt %

