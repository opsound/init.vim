"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/stro/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/stro/.local/share/dein')
  call dein#begin('/Users/stro/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/stro/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('tommcdo/vim-exchange')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-vinegar')
  call dein#add('kana/vim-textobj-user')
  call dein#add('kana/vim-textobj-function')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('chriskempson/base16-vim')
  call dein#add('idanarye/vim-merginal')
  call dein#add('easymotion/vim-easymotion')
  call dein#add('ctrlpvim/ctrlp.vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

let mapleader="\<Space>"

nmap <leader>s :w<CR>
nmap <leader><tab> :b#<CR>

nmap <leader>0 <c-w>q
nmap <leader>1 <c-w>o
nmap <leader>2 :split<CR>
nmap <leader>3 :vsplit<CR>
nmap <c-k> :bd<CR>

nmap <leader>i :Denite buffer file_old<CR>
nmap <leader>f :DeniteBufferDir file_rec<CR>
nmap <leader>F :Denite file_rec ~/<CR>
nmap <leader>j :DeniteProjectDir file_rec<CR>
nmap <c-s> :Denite line<CR>

nmap <leader>l :CtrlPBufTag<CR>

vmap <leader>y "+y
vmap <leader>d "+d
nmap <leader>p "+p
nmap <leader>P "+P
vmap <leader>p "+p
vmap <leader>P "+P

nmap <leader>gs :Gstatus<CR>

nmap <leader>q :e ~/.config/nvim/init.vim<CR>
nmap <leader>Q :w<CR>:so %<CR>
nmap <leader>A :call dein#update()<CR>

let g:deoplete#enable_at_startup = 1

set tabstop=4
set shiftwidth=4
set expandtab
