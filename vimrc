" =======================================
" Initially based on/forked from: Luan Santos (@luan)
" [http://github.com/tirodactyl/vimfiles]
" Maintained By: Tirso Peguero (GitHub: @tirodactyl)
" =======================================

runtime! Plug.vim

colorscheme gruvbox
set background=dark
let g:has_powerline_font = 1

runtime! config/basic.vim
runtime! config/bindings.vim
runtime! config/gitrebase.vim
runtime! config/paste.vim


" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

runtime! config/plugin/airline.vim
runtime! config/plugin/autoclose.vim
runtime! config/plugin/commentary.vim
runtime! config/plugin/echodoc.vim
runtime! config/plugin/fugitive.vim
runtime! config/plugin/fzf.vim
runtime! config/plugin/multicursor.vim
runtime! config/plugin/neosnippet.vim
runtime! config/plugin/NERDTree.vim
runtime! config/plugin/omnicompletion.vim
runtime! config/plugin/prettier.vim
runtime! config/plugin/rainbow.vim
runtime! config/plugin/signify.vim
runtime! config/plugin/tagbar.vim
runtime! config/plugin/undotree.vim
runtime! config/plugin/nvim/neomake.vim
runtime! config/plugin/nvim/deoplete.vim
runtime! config/plugin/vim-go.vim

" ----------------------------------------
" Language Configuration
" ----------------------------------------

runtime! config/lang/go.vim
runtime! config/lang/json.vim
runtime! config/lang/rust.vim
runtime! config/lang/yaml.vim

" ----------------------------------------
" Lib load path
" ----------------------------------------

runtime! lib/auto_commands.vim
