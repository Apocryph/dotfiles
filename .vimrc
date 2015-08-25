" Initialization {{{

"Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
if &compatible
set nocompatible               " Be iMproved
endif

"}}}

" NeoBundle Setup {{{

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

"}}}

" Bundles Here {{{

NeoBundle "https://github.com/flazz/vim-colorschemes.git"
NeoBundle "easymotion/vim-easymotion"
NeoBundle "scrooloose/syntastic"
NeoBundle "kien/rainbow_parentheses.vim"
NeoBundle "kien/ctrlp.vim"
NeoBundle "tpope/vim-surround"
NeoBundle "tpope/vim-repeat"

"}}}

" NeoBundle Cleanup {{{

call neobundle#end()

	" Required:
	filetype plugin indent on

	" If there are uninstalled bundles found on startup,
	" this will conveniently prompt you to install them.
	NeoBundleCheck

	set modelines=1

"}}}

" Purty Colors {{{

colorscheme navajo-night
syntax enable

"}}}

" Tabs {{{

set tabstop=4		"Number of visual spaces per TAB
set softtabstop=4	"Number of spaces in a tab when editing
set expandtab		"If I ever want tabs as spaces

"}}}

" General Vim UI {{{

set number		"Show line numbers
set showcmd		"Show command in the bottom bar
set cursorline		"Highlight the current line
filetype indent on	"Load filetype-specific indent files
set wildmenu		"Command Autocompletion
set lazyredraw		"Only redraw when necessary, makes macros faster
set showmatch		"Highlight matching braces

"}}}

" Searching {{{

set incsearch
set hlsearch
nnoremap <leader>' :nohlsearch<CR>

"}}}

" Folding {{{

set foldenable              "Enable Folding
set foldlevelstart=10       "Open folds up to ten levels by default
set foldnestmax=10          "Folds are limited to ten levels

"}}}

" Leader Keybindings {{{

let mapleader=","

map <Leader> <Plug>(easymotion-prefix)

"}}}

" Default Syntastic Settings {{{

set statusline +=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"}}}

" Rainbow Parentheses Config{{{

augroup rainbow_parentheses
        autocmd!
        autocmd VimEnter * RainbowParenthesesToggle
        autocmd Syntax * RainbowParenthesesLoadRound
        autocmd Syntax * RainbowParenthesesLoadSquare
        autocmd Syntax * RainbowParenthesesLoadBraces
augroup END

"}}}

" CtrlP Config {{{

"None needed so far!
"May need to configure g:ctrlp_working_path_mode
"To best handle which directories it searches.

"}}}

" vim:foldmethod=marker:foldlevel=0
