"   Plugins
" ----------------------------------------------------------------------------
" Install vim-plug if we don't already have it
if empty(glob("~/.config/nvim/autoload/plug.vim"))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugged')

" Defaults {{{
  Plug 'tpope/vim-sensible'
" }}}

" Navigation {{{
  " Displays tags in a window, ordered by scope
  Plug 'majutsushi/tagbar'

  " Organizes tag files and automatically regenerates
  Plug 'ludovicchabant/vim-gutentags'

  " Fancy search results
  Plug 'google/vim-searchindex'

  " A tree explorer plugin for vim
  Plug 'scrooloose/nerdtree'

  " project configuration via 'projections'
  Plug 'tpope/vim-projectionist'

  " Run tests from within vim
  Plug 'janko-m/vim-test'

  " A command-line fuzzy finder written in Go
  Plug 'junegunn/fzf', { 'do': 'yes \| ./install'  }
  Plug 'junegunn/fzf.vim'
" }}}

" UI Additions {{{
  " Colors {{{
    " Plug 'dolio/vim-hybrid'
    Plug 'morhetz/gruvbox'
    " Plug 'chriskempson/base16-vim'
    " Plug 'flazz/vim-colorschemes'
  " }}}

  " rainbow parentheses improved, shorter code, no level limit, smooth and fast, powerful configuration.
  Plug 'luochen1990/rainbow'

  " lean & mean status/tabline for vim that's light as air
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Plugin to toggle, display and navigate marks
  Plug 'kshenoy/vim-signature'

  " Show a diff via Vim sign column.
  Plug 'mhinz/vim-signify'

  " Toggle the cursor shape in the terminal
  Plug 'jszakmeister/vim-togglecursor'

  " Seamless navigation between tmux panes and vim splits
  Plug 'christoomey/vim-tmux-navigator'

  " Better whitespace highlighting for Vim
  Plug 'ntpeters/vim-better-whitespace'
" }}}

  " comment stuff out (via leader-/)
  Plug 'tpope/vim-commentary'

  " quoting/parenthesizing made simple; e.g. ysiw) to wrap word in parens
  Plug 'tpope/vim-surround'

  " a Git wrapper so awesome, it should be illegal; :Gblame, etc
  Plug 'tpope/vim-fugitive'

  " easily search for, substitute, and abbreviate multiple variants of a word
  Plug 'tpope/vim-abolish'

  " Vim sugar for the UNIX shell commands that need it the most; e.g. :Find, :Wall
  Plug 'tpope/vim-eunuch'

  " Syntax checking hacks for vim
  Plug 'benekastah/neomake'

  " Functions to toggle the [Location List] and the [Quickfix List] windows.
  Plug 'milkypostman/vim-togglelist'

  " True Sublime Text style multiple selections for Vim
  Plug 'terryma/vim-multiple-cursors'

  " The ultimate undo history visualizer for VIM
  Plug 'mbbill/undotree'

  " utility for syntax-aware code formatting
  Plug 'google/vim-codefmt'

  " vimscript plugin library. It is designed for plugin authors.
  Plug 'google/vim-maktaba'
" }}}

" Automatic Helpers {{{
  " wisely add "end" in ruby, endfunction/endif/more in vim script, etc
  Plug 'tpope/vim-endwise'

  " enable repeating supported plugin maps with '.'
  Plug 'tpope/vim-repeat'

  " automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
  Plug 'tpope/vim-sleuth'

  " auto-close paired chars, e.g. (), {}
  Plug 'Townk/vim-autoclose', { 'on': 'AutoCloseOn' }

  " Speed up Vim by updating folds only when called-for.
  Plug 'Konfekt/FastFold'

  " provides an asynchronous keyword completion system in the current buffer
  " requires python3 support: https://github.com/Shougo/deoplete.nvim#requirements
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#sources#go#gocode_binary = '$GOPATH/bin/gocode'

  " deoplete.nvim source for Golang and gocode or vim-go
  Plug 'zchee/deoplete-go'

  " displays information in echo area from echodoc plugin.
  Plug 'Shougo/echodoc.vim'
" }}}

" Snippets {{{
  " neo-snippet plugin contains neocomplcache snippets source
  Plug 'Shougo/neosnippet.vim'

  " The standard snippets repository for neosnippet
  Plug 'Shougo/neosnippet-snippets'
" }}}

" PList
Plug 'darfink/vim-plist'

" Ruby
Plug 'vim-ruby/vim-ruby',           { 'for': ['ruby', 'rake'] }
Plug 'tpope/vim-rails',             { 'for': ['ruby', 'rake'] }
Plug 'tpope/vim-rake',              { 'for': ['ruby', 'rake'] }
Plug 'tpope/vim-bundler',           { 'for': ['ruby', 'rake'] }

" Go
Plug 'fatih/vim-go',                { 'do': ':GoUpdateBinaries' }

" Rust
Plug 'rust-lang/rust.vim'

" Docker
Plug 'honza/dockerfile.vim'

" Markdown
Plug 'shime/vim-livedown', { 'for': ['markdown'] }

" JavaScript
  Plug 'pangloss/vim-javascript',  { 'for': ['javascript']        }
  Plug 'mxw/vim-jsx',              { 'for': ['javascript']        }
  Plug 'maksimr/vim-jsbeautify',   { 'for': ['javascript']        }
  Plug 'kchmck/vim-coffee-script', { 'for': ['coffee']            }
  Plug 'elzr/vim-json'

  " TypeScript
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript', {'do': './install.sh'}

" CSS / HTML
  Plug 'mattn/emmet-vim'
  Plug 'tpope/vim-haml',            { 'for': ['haml']              }
  Plug 'nono/vim-handlebars',       { 'for': ['handlebars']        }
  Plug 'cakebaker/scss-syntax.vim', { 'for': ['scss','sass']       }
  Plug 'hail2u/vim-css3-syntax',    { 'for': ['css','scss','sass'] }
  Plug 'othree/html5.vim'
  Plug 'juvenn/mustache.vim',       { 'for': ['mustache']          }
  Plug 'gregsexton/MatchTag'

" Linting
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

call plug#end()

