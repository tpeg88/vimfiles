" =======================================
" Initially based on/forked from: Jeremy Mack (@mutewinter)
" [http://github.com/luan/vimfiles]
" Who: Luan Santos (GitHub: @luan)
" =======================================
execute pathogen#infect()

set nocompatible
runtime! NeoBundle.vim

silent! source ~/.vimrc.local.before

runtime! config/basic.vim
runtime! config/bindings.vim
runtime! config/colors.vim

" Platform Specific
runtime! config/platform.vim

" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

runtime! config/plugin/NERDTree.vim
runtime! config/plugin/ack.vim
runtime! config/plugin/airline.vim
runtime! config/plugin/commentary.vim
runtime! config/plugin/ctrlp.vim
runtime! config/plugin/echodoc.vim
runtime! config/plugin/fugitive.vim
runtime! config/plugin/golang.vim
runtime! config/plugin/neocomplete.vim
runtime! config/plugin/neosnippet.vim
runtime! config/plugin/omnicompletion.vim
runtime! config/plugin/rainbow.vim
runtime! config/plugin/signify.vim
runtime! config/plugin/tagbar.vim
runtime! config/plugin/tmux-navigator.vim
runtime! config/plugin/undotree.vim

" ----------------------------------------
" Lib load path
" ----------------------------------------

runtime! lib/functions.vim
runtime! lib/auto_commands.vim

silent! source ~/.vimrc.local

" ----------------------------------------
" Custom Keymappings
" ----------------------------------------

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
