" ----------------------------------------
" Bindings
" ----------------------------------------

" Note: This line MUST come before any <leader> mappings
let g:mapleader=","
let g:maplocalleader = "-"

" Paste mode - should be able to easily combine this with an actual paste
" command so one does not have to remember to toggle mode
set pastetoggle=<F2>
map <F2> :set invpaste<CR>:set paste?<CR>

" For long wrapped lines (which ideally will not ocurr...)
nnoremap j gj
nnoremap k gk

" Because Esc is too far from the home row (see r/mechanicalkeyborads for
" alternative solutions...)
imap jk <Esc>

" double percentage sign in command mode is expanded to directory of current
" file - http://vimcasts.org/e/14

" Easy visual mode indentation
vnoremap < <gv
vnoremap > >gv

" make Y consistent with C and D. See :help Y.
nnoremap Y y$
" Y in visual mode copies to system clipboard
vmap Y "+y

" Allow usage of 'p' in visual mode to replace selection {{{
function! s:ReplacePaste()
  set paste
  exe 'normal! `<"_cv`>'."\<c-r>".v:register."\<esc>"
  set nopaste
endfunction

vnoremap <silent> p :call <sid>ReplacePaste()<cr>
" }}}

" ---------------
" Leader Commands
" ---------------

" Edit vimrc with ,vi
nmap <silent> <leader>vi :e ~/.vim/vimrc<CR>
" Reload vimrc with ,vir
nmap <silent> <leader>vir :so ~/.vim/vimrc<CR>

" Open files in current directory
cnoremap %% <C-R>=expand('%:h').'/'<cr>
nmap <leader>e :edit %%
nmap <leader>v :view %%

" Switch between test and production code
nnoremap <leader>. :A<cr>

" Switches between last buffer used
nnoremap <leader><leader> <c-^>

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

" Toggle spelling mode with ,s
nmap <silent> <leader>ss :set spell!<CR>
nmap <silent> <leader>sf :QuickSpellingFix<CR>

" Window {{{
" Equal Size Windows
nmap <silent> <leader>w= :wincmd =<CR>
" Swap Windows
nmap <silent> <leader>wx :wincmd x<CR>

" Window Splitting
nmap <silent> <leader>hs :split<CR>
nmap <silent> <leader>vs :vsplit<CR>
nmap <silent> <leader>sc :close<CR>

" Split Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Other {{{
" Opens NERDTree to the current file
map <leader>r :NERDTreeFind<cr>
set t_ut=

" Copies file location relative to CWD
map <leader>Y :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%")<CR>
" " with line number
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" create fold in SCSS
nnoremap <leader>S ?{<CR>jV/^\s*\}$<CR>k:sort<CR>:noh<CR>
vnoremap <leader>S :sort<CR>
nnoremap <silent> <space> :noh<cr>
nnoremap <leader>=  gg=G``

function! CRWriteIfNecessary()
  if !&modified || &readonly || &filetype == "qf"
    " Execute a normal enter when in Quickfix list.
    execute "normal! \<enter>"
  else
    :write
  endif
endfunction
function! MapCR()
  nnoremap <silent> <enter> :call CRWriteIfNecessary()<CR>
endfunction
call MapCR()

" no idea what this is.... something about tag files - which I would like to
" learn to use...
nnoremap <silent><leader><C-]> <C-w><C-]><C-w>T

" quickly insert empy new lines
nnoremap <silent><leader>o o<esc>
nnoremap <silent><leader>O O<esc>
" }}}
