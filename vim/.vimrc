set nocompatible 			" we want the latest Vim settings/options
syntax enable
let mapleader=','
set number
set relativenumber

so ~/.vim/plugins.vim

"colorscheme
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'soft'
set bg=dark

"SEARCHES START
set hlsearch
set incsearch

"SEARCHES END

set shiftwidth=2
set softtabstop=2
set tabstop=2

"TYPING
set autoindent  " indent when moving to the next line while writing code
set expandtab   " expand tabs into spaces

" HIGHLIGHTING
set cursorline  " show a visual line under the cursor's current line
set showmatch   " show the matching part of the pair for [] {} and ()



" tab behavior depending on file type
" just to have more readable (h|x)tml
autocmd Filetype html setlocal ts=2 sw=2 expandtab			" for html/rb files, 2 spaces
autocmd FileType javascript setlocal ts=2 sts=2 sw=2		" for javascrpit, 4 spaces
autocmd FileType python setlocal ts=4 sts=4 sw=4				" for python, 4 spaces

" " remove youcompleteme preview window on top
" set completeopt-=preview

" FOLD methods! <3
" right arrow or 'z a' to uncollapse, 'z c' to collapse
" see https://vim.fandom.com/wiki/Folding
" zR opens all folds
" zM closes them all
set foldmethod=syntax

"---- MAPPING BUTTONS START ----
nnoremap <silent> <C-w>w :ZoomWin<CR> " zoom automatically when moving between windows (move between windows with Ctrl + W o

" remap for tab navigation
nmap 9 gT
nmap 0 gt


nnoremap <C-e> :NERDTreeToggle<CR>    " NERDTree toggle with CTRL+e
nmap <Leader>ev :tabedit $MYVIMRC<CR> " Leader ev toggles vimrc
" simple highligth removal
nmap <Leader><space> :nohlsearch<CR>  " Leader space removes highlight search
nmap <Leader>f :tag<space>            " Leader f toggles ctags search
:iabbrev </ </<C-X><C-O>

" toggle row numbers
nmap <F2> :set nu! rnu!<CR>



"MAPPING BUTTONS END


"---- PLUGINS SETTINGS ----
let g:coc_disable_startup_warning = 1
"
" -- alvan/vim-closetags --
"
" file types
let g:closetag_filenames = '*.html, *.xhtml, *.xml'
" shortcut
let g:closetag_shortcut = '>'



"AUTOCMD STUFF START
let g:autopep8_on_save = 1

" source vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"AUTOCMD STUFF END
