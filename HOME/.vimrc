"  _____ _           ____                     _   _ _        _       
" |_   _| |__   ___ / ___| __ _ ___ ___ _   _| \ | (_)_ __  (_) __ _ 
"   | | | '_ \ / _ \ |  _ / _` / __/ __| | | |  \| | | '_ \ | |/ _` |
"   | | | | | |  __/ |_| | (_| \__ \__ \ |_| | |\  | | | | || | (_| |
"   |_| |_| |_|\___|\____|\__,_|___/___/\__, |_| \_|_|_| |_|/ |\__,_|
"                                       |___/             |__/       
"   Spawned: Sat Jan 21 2023 - 08:34
"  Last Mod: Fri Nov 10 2023 - 17:36
"  Config: .vimrc
"  Depends: Skeleton Files - Powerline Fonts - FZF
"

"  ENV
set guicursor=a:ver90-Cursor
set encoding=utf8
set number relativenumber
set ruler
set visualbell
set t_Co=256
set showmatch
set mat=2
set ignorecase
set smartcase
set cmdheight=1
set hidden
set autoread
set splitbelow splitright
set wildmenu
set wildmode=longest,list,full
set foldmethod=manual
syntax on
au BufNewFile,BufRead *.nt set filetype=bash
filetype off
filetype plugin indent on
au FocusGained,BufEnter * checktime
" Skeletons
autocmd BufNewFile *.sh 0r ~/skels/bash.sh
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

noremap <leader>cp :r ! cat ~/.local/tmp/clip.txt<cr>kdd




" Plugins
call plug#begin()
	Plug 'voldikss/vim-floaterm'
	"AutoCompleate
	Plug 'ycm-core/YouCompleteMe' "cd into plug folder & ./install.py
	Plug 'vimwiki/vimwiki'
	Plug 'elkowar/yuck.vim'
	"Themes
	Plug 'rose-pine/vim'
	Plug 'powerline/fonts'
	Plug 'EdenEast/nightfox.nvim' " Vim-Plug
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'mcchrish/zenbones.nvim'
	Plug 'pablopunk/sick.vim'
	Plug 'dylanaraps/wal.vim'
	"Nerdtree	
	Plug 'mbbill/undotree'
	Plug 'preservim/nerdtree'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'ryanoasis/vim-devicons'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'vifm/vifm'
	Plug 'vifm/vifm-colors'
	Plug 'ap/vim-css-color'	
	Plug 'chrisbra/Colorizer'	
	Plug 'itspriddle/vim-shellcheck'	

	"LSP-Setup
	Plug 'prabirshrestha/vim-lsp'
	Plug 'mattn/vim-lsp-settings'
	Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()


" Install vim-plug if not found
 if empty(glob('~/.vim/autoload/plug.vim'))
   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
       \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
       endif

" Run PlugInstall if there are missing plugins
       autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
	 \| PlugInstall --sync | source $MYVIMRC
	 \| endif

" Theme set up
colorscheme rosepine
let g:airline_theme='rose-pine'
let g:airline_powerline_fonts = 1

" HotKeys
" Pick a leader
let mapleader = " "

" Visual-Mode
" Add to begining (or) End of line
vnoremap <leader>ah :s/^/#/
vnoremap <leader>at :s/$/#/


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"  map copy an paste
noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>Y "*y
noremap <leader>P "*p

"Buffer Nav
let g:airline#extensions#tabline#enabled = 1
noremap <leader>B :enew<CR>
noremap <leader>b :enew<CR>:NERDTreeFocus<CR>
noremap <leader>l :bnext<CR>
noremap <leader>h :bprevious<CR>

" Useful mappings for managing tabs
map <leader>tt :tabnew<cr>:NERDTreeFocus<CR>
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

"  Folding Manualy
 inoremap <F9> <C-O>za
 nnoremap <F9> za
 onoremap <F9> <C-C>za
 vnoremap <F9> zf

" :NERDTree HKs
noremap <leader>n :NERDTreeFocus<CR>
noremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
noremap <C-f> :NERDTreeFind<CR>

" ii escapes to Normal
inoremap ii <Esc>

" PlugIns (Toggle)
noremap <leader>PI :PlugInstall
noremap <leader>co :ColorToggle

" Templates
noremap <leader>T :0r ~/skels/gas-template.txt<CR>:call SpawnMod()<cr>:call LastMod()<cr>
noremap <leader>D :call SpawnMod()<cr>



" :NERDTree Set Up
let NERDTreeShowHidden=1	
let g:NERDTreeWinPos = "right"

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif



" FZF Settings
noremap <leader>f :NERDTreeToggle<CR>:FZF<CR>
noremap <leader>ff :NERDTreeToggle<CR>:FZF!<CR>

" Functions

" Auto Stamp (Spawned: <date time>)
autocmd BufNewFile * ks|call SpawnMod()|'s
  fun SpawnMod()
      if line("$") > 20
	let l = 20
      else
	let l = line("$")
      endif
      exe "1," .. l .. "g/Spawned: /s/Spawned: .*/Spawned: " ..
	\ strftime("%a %b %d %Y - %R")
    endfun

" Auto Stamp (Last Mod: <date time>)
autocmd BufWritePre,FileWritePre * ks|call LastMod()|'s
  fun LastMod()
      if line("$") > 20
	let l = 20
      else
	let l = line("$")
      endif
      exe "1," .. l .. "g/Last Mod: /s/Last Mod: .*/Last Mod: " ..
	\ strftime("%a %b %d %Y - %R")
    endfun


"""" Testing FZF
" 	Add function to search for .sh

function! OpenFzfForNtFiles()
    let dir = '$HOME/.local/NOTES/' 
    call fzf#run({
	  \ 'source': 'find ' . dir . ' -type f -name "*.nt"',
	  \ 'sink':  'tabnew',
	  \ 'options': '--preview "cat {}"',
	  \ 'down':  '90%'
	  \ })
endfunction

" Map the function to a keybinding (e.g., <Leader>fn)
nnoremap <Leader>fn :call OpenFzfForNtFiles()<CR>

"""" :set paste/nopaste toggle
" Toggle paste mode
function! TogglePasteMode()
    if &paste
	set nopaste
    else
	set paste
    endif
endfunction

" Bind F3 to toggle paste mode
nnoremap <F3> :call TogglePasteMode()<CR>


" VIM LSP
if executable('pylsp')
    " pip install python-lsp-server
    au User lsp_setup call lsp#register_server({
	\ 'name': 'pylsp',
	\ 'cmd': {server_info->['pylsp']},
	\ 'allowlist': ['python'],
	\ })
endif

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gs <plug>(lsp-document-symbol-search)
    nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-implementation)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
    nnoremap <buffer> <expr><c-d> lsp#scroll(-4)

    let g:lsp_format_sync_timeout = 1000
    autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')

    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

" Terminal
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>
tnoremap   <silent>   <F11>   <C-\><C-n>:FloatermKill<CR>

" nnoremap   <silent>   <F9>    :FloatermNext<CR>
" tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>

let g:floaterm_position = 'topright'
let g:floaterm_wintype = 'float'


nnoremap <F5> :UndotreeToggle<CR>

