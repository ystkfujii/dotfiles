set title     "編集中のファイル名を表示
set showmatch "対応する括弧を表示

"colorscheme koehler
"set background=dark
set cursorline

" #####タブ設定####
set list listchars=tab:\>\-
set title     "編集中のファイル名を表示
set showmatch "対応する括弧を表示

"colorscheme koehler
"set background=dark
set cursorline

" #####タブ設定####
set list listchars=tab:\>\-
set tabstop=4
" 色 
"hi NonText guibg=NONE guifg=DarkGreen
"hi SpecialKey guibg=NONE guifg=Gray50
"hi SpecialKey term=none cterm=none ctermfg=59 gui=none guifg=snow3

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase  "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan   "検索時に最後まで行ったら最初に戻る
set hlsearch   "highlight search word

"ESCを二回押すことでハイライトを消す
nmap <silent> <Esc><Esc> :nohlsearch<CR>

set autoindent "開業時に前の行にインデントを合わせる


call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'mattn/vim-goimports'
Plug 'sheerun/vim-polyglot'
Plug 'ghifarit53/tokyonight-vim'
call plug#end()

" Undo永続化
if has("persistent_undo")
    set undodir=~/.vim
    set undofile
endif

let mapleader = "\<Space>"
nmap <silent> <Leader>d :LspDefinition<CR>
nmap <silent> <Leader>s :split \| :LspDefinition <CR>

"##### colorscheme:tokyonight #####
"#https://github.com/ghifarit53/tokyonight-vim

set termguicolors

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight
