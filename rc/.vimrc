" plugin options
let g:erlangCheckFile="~/.vim/bundle/vimerl/compiler/erlang_check_file.erl"
let g:vim_search_pulse_mode = 'pattern'
let g:vim_search_pulse_color_list = [22, 28, 34, 40, 46]

" pathogen runntime injection and help indexing
execute pathogen#infect()
execute pathogen#helptags()

syntax on
filetype on
filetype plugin on
filetype indent on

let mapleader=","

set ts=4
set sts=4
set sw=4
set expandtab
set guioptions-=m
set guioptions-=T
set scrolloff=5
set number
set formatoptions=l
set smarttab
set wildmenu
set wildmode=list:longest,full
set lbr
set showmatch
set hlsearch
set incsearch
set ruler
set wmh=0
set showmode
set showcmd
set cursorline
set ttyfast
set formatoptions=qrn1
set encoding=utf-8
set laststatus=2


" spelling stuff
map <F6> <Esc>:setlocal spell spelllang=en_au<CR>
map <F7> <Esc>:setlocal nospell<CR>
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" don't show these files
set wildignore=.svn,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*~,*.*~
set wildignore+=*.rbc,*.rbo,*.gem,._*,*.beam
set wildignore+=*/deps/*
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*

" switch buffers without writing to disk
set hidden

" pattern matching
set ignorecase

" terminal title
set title

" stop that bloody folding!
set nofoldenable

" intuitive backspacking in insert mode
set backspace=indent,eol,start
set smartcase

set history=1000

" default to powerful regex
nnoremap / /\v
vnoremap / /\v

" tab will go between parens
nnoremap <tab> %
vnoremap <tab> %

" ditch all trailing whitespace
nnoremap <leader>ws :%s/\v\s+$//g<cr>:let @/=''<cr>

" save the current file
nnoremap <leader>w :w<cr>

" save and quit the current file
nnoremap <leader>wq :wq<cr>
nnoremap <leader>x :x<cr>

" reselect text that was just pasted
nnoremap <leader>v v`]

" clear search highlighting
nnoremap <leader>/ :noh<cr>

" swap current word with recently copied
nmap <leader>cp "_ciw<C-R>"<Esc>

" Make Y act like every other capital letter (normal its an alias for yy)
nnoremap Y y$

" add/remove line numbers
nnoremap <leader>1 :set number<cr>
nnoremap <leader>! :set nonumber<cr>

" edit vimrc in a vertical split
nnoremap <leader>rc <C-w><C-v><C-l>:e ~/.vim/rc/.vimrc<cr>

" enter vertical split mode
nnoremap <leader>vv :vsp<cr>

" enter vertical split mode with temp [noname] file
nnoremap <leader>vn :vnew<cr>

" enter horizontal split mode
nnoremap <leader>hh :sp<cr>

" quit the current window
nnoremap <leader>q :q<cr>

" Go to start of function
nnoremap <leader>[ 99[{

" Go to end of function
nnoremap <leader>] 99]}

" open registers
nnoremap <leader>rr :reg<cr>

" list current files in buffer (commented cause using buffergator)
" nnoremap <leader>ls :ls<cr>

" when typing jj in insert mode, go back to normal mode
inoremap jj <ESC>
inoremap jk <ESC>

" jump to start and end
nnoremap <leader>end $
nnoremap <leader>st ^

" yankring helpers
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

"IIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIIII
" visual indication for long lines
match ErrorMsg '\%>80v.\+'


" List chars with unicode
exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"

" toggle whitespace view
nmap <silent> <leader>s :set nolist!<CR>

" underline the current line
nmap <silent> <leader>sul yypVr=
"nmap <silent> <leader>sul yypVr-
"nmap <silent> <leader>dul yypVr=

" get rid of annoying prompts
set shortmess=atI

" use [RO] for [readonly] to save space
set shortmess+=r

" use confirm instead of aborting the action
set confirm

" movement between window splits
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-l> :wincmd l<CR>

" search/replace word under cursor
nnoremap <C-S> :,$s/\<<C-R><C-W>\>/
"
" turn off that fucking bell
set noerrorbells

" hide the mouse while doing stuff
set mousehide

" simple hex editing
:map <Leader>hon :%!xxd<CR>
:map <Leader>hoff :%!xxd -r<CR>

" shortcut for changing syntax
:command! -nargs=1 -complete=option Syn set ft=<args>

" wire commandt in
:map <Leader>t :CommandT<CR>

" get buffergator to be nice
nnoremap <silent> <Leader>b :BuffergatorOpen<CR>
nnoremap <silent> <Leader>B :BuffergatorClose<CR>

"nnoremap <silent> <Leader>bd :bd<CR>
nnoremap <silent> <Leader>d :bd<CR>

" use :w!! to write to a file using sudo if you forgot to 'sudo vim file'
" (it will prompt for sudo password when writing)
cmap w!! %!sudo tee > /dev/null %

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" format the entire file
nmap <leader>fef ggVG=

" Next buffer
nmap <silent> ,. :bnext<CR>

" Previous buffer
nmap <silent> ,m :bprev<CR>

" create newline
"nmap <leader><ENTER> i<ENTER><Esc>ge
nmap <leader><ENTER> i<ENTER><Esc>

" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q

" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q

" cd to the directory containing the file in the buffer (commenting out until I can figure out what it does)
" nmap <silent> <leader>cd :lcd %:h<CR>

" shortcut to use clipboardRegister (Note: still need to add y or d afterwards, examples: ,Cyiw or ,Cdd or ,Cp)
nmap <leader>C "+

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" set text wrapping toggles
"nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Map the arrow keys to be based on display lines, not physical lines
map <Down> gj
map <Up> gk

nmap <leader>n :NERDTreeToggle<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Increase/Decrease size of horizontal/vertical split
map <Leader>< <C-w>10<
map <Leader>> <C-w>10>
map <Leader>+ <C-w>5+
map <Leader>- <C-w>5-

if !has("gui_running")
  colorscheme hybrid
  "set t_Co=256
  set term=screen-256color
  set clipboard=unnamed
"  set background=dark
endif

if has("gui_running")
  color compot
  if has("autocmd")
    " Automatically resize splits when resizing MacVim window
    autocmd VimResized * wincmd =
  endif
endif

"set backupdir=~/.vim/_backup//    " where to put backup files.
"set directory=~/.vim/_temp//      " where to put swap files.

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Without setting this, ZoomWin restores windows in a way that causes
  " equalalways behavior to be triggered the next time CommandT is used.
  " This is likely a bludgeon to solve some other issue, but it works
  set noequalalways

  " Start the status line
  set statusline=%f\ %m\ %r

  " Finish the statusline
  set statusline+=Line:%l/%L[%p%%]
  set statusline+=Col:%v
  set statusline+=Buf:#%n
  set statusline+=[%b][0x%B]
endif


" Open any file with pre-existing swapfile in readonly mode
augroup NoSimultaneousEdits
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
  autocmd SwapExists * echomsg ErrorMsg
  autocmd SwapExists * echo 'Duplicate edit session (readonly)'
  autocmd SwapExists * echohl None
  autocmd SwapExists * sleep 2
augroup END

