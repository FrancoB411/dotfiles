set nocompatible


" AUTO-INSTALL VIM-PLUG
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

" VIM-PLUG
call plug#begin('~/.vim/plugged')
  Plug 'tpope/vim-sensible'
  Plug 'junegunn/vim-easy-align'
  Plug 'bling/vim-airline'
  Plug 'tpope/vim-surround'
  Plug 'gioele/vim-autoswap'
  Plug 'tpope/vim-repeat'
  Plug 'wincent/Command-T'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-unimpaired'
  Plug 'airblade/vim-gitgutter'
  Plug 'rking/ag.vim'
  Plug 'mustache/vim-mustache-handlebars'
  Plug 'mattn/emmet-vim'
  Plug 'moll/vim-bbye'
  Plug 'elixir-lang/vim-elixir'
  Plug 'groenewege/vim-less' 
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'Shougo/neocomplete.vim'
  " Plug 'JamshedVesuna/vim-markdown-preview'
  Plug 'tpope/vim-dispatch'
  " Plug 'spf13/vim-autoclose'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'vim-pandoc/vim-pandoc-syntax'
  Plug 'vim-scripts/fountain.vim'
  Plug 'elmcast/elm-vim'
  " Plug 'skammer/vim-css-color'
  Plug 'justinmk/vim-sneak'
  Plug 'sjl/gundo.vim'
call plug#end()

" display images automatically on buffer write 
let vim_markdown_preview_toggle=2
"
"format elm
let g:elm_format_autosave = 1

"toogle gundo undo tree
nnoremap <F5> :GundoToggle<CR>

" use comma as leader key
let mapleader=","

" Use neocomplete autocomplete
let g:neocomplete#enable_at_startup = 1

" remap neocomplete to use the tab key
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

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

" .vimrc
nnoremap <leader>v :source $MYVIMRC<CR>

" TAB MADNESS
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Disable the branch name
let g:airline#extensions#branch#enabled = 0

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" let g:airline_section_b#enabled = 0
let g:airline#extensions#default#layout = [
      \ [ 'a', 'c' ],
      \ [ 'x', 'y', 'z', 'warning' ]
      \ ]

" command-t
let g:CommandTAlwaysShowDotFiles=1
let g:CommandTMatchWindowAtTop=1


" Disable temp and backup files
set wildignore+=*.ico,*.ICO,backup/**,*.sql,*.dump,*.tmp,*.min.js
set wildignore+=*.png,*.PNG,*.JPG,*.jpg,*.JPEG,*.jpeg,*.GIF,*.gif,*.pdf,*.PDF
set wildignore+=coverage/**,tmp/**,rdoc/**,*.BACKUP.*,*.BASE.*,*.LOCAL.*,*.REMOTE.*,.sass-cache/**
set wildignore+=node_modules/**/node_modules/**
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,solr/**,log/**,*.psd,*.PSD,.git/**,.gitkeep,.gems/**,*~,._*

set cursorline                      " Highlight current line

" Use silver-searcher 
let g:ackprg = 'ag --nogroup --nocolor --column'

" Highlight all text matching the current search
set hlsearch

" Press Space to turn off highlighting and clear any message already
" displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>


" Map Ctl- h,j,k,l to navigate windows 
:nnoremap <C-H> <C-W>h
:nnoremap <C-J> <C-W>j
:nnoremap <C-K> <C-W>k
:nnoremap <C-L> <C-W>l


" auto reload files that have changed on disk, not files that have been
" deleted
set autoread


command! -bang -complete=buffer -nargs=? Bd Bdelete<bang> <args>
let g:mustache_abbreviations = 1

" open netRW in current directory
:map :E :Explore

" set clipboard=unnamedplus

