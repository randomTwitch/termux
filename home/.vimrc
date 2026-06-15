call plug#begin()

" List your plugins here
"Plug 'tpope/vim-sensible'

call plug#end()
" ---------------------
" au filetypedetect BufNewFile,BufRead *.pb so ../usr/share/vim/vim91/syntax/pb.vim 
highlight Normal ctermfg=8
tabnew
tabprevious
set autocomplete
" packadd netrw
" so ../usr/share/vim/vim91/plugin/netrwPlugin.vim
" terminal lua vim.command'Lexplore'
