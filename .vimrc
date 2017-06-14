filetype off
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

" 外掛
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'xuyuanp/nerdtree-git-plugin'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Yggdroot/indentLine' " Line
NeoBundle 'tpope/vim-surround'
NeoBundle 'taglist.vim'
NeoBundle 'shawncplus/phpcomplete.vim'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-rails'
NeoBundle 'easymotion/vim-easymotion'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'haya14busa/incsearch.vim'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'breuckelen/vim-resize'
NeoBundle 'justincampbell/vim-eighties'
NeoBundle 'dkprice/vim-easygrep'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tpope/vim-endwise'

" git config --global diff.tool vimdiff
" git config --global difftool.prompt false
" git config --global alias.d difftool
" $ git d FILE_NAME
NeoBundle 'chrisbra/vim-diff-enhanced'

NeoBundle 'tpope/vim-ragtag'

" theme
NeoBundle 'tomasr/molokai'

" 解決powerline 箭號
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = 'fancy'

" 設定airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" 佈景主題設定
se t_Co=256
set term=screen-256color
" let g:solarized_termcolors=256
" colorscheme solarized
" set background=dark

syntax enable
colorscheme molokai

" Line 設定
let g:indentLine_color_term = 239
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

" 顯示行號
set number

" 顯示相對行
set relativenumber
:hi LineNr cterm=bold ctermfg=White ctermbg=Gray

" 自動縮排
set ai

" 顯示游標列
set cursorline

" 高亮當前列 (垂直)。
set cursorcolumn

" 文字編碼加入 utf8。
set enc=utf8

" space 取代 tab
set expandtab

" 自訂縮排 (Tab) 位元數。
set tabstop=4
set shiftwidth=4

" 顯示空白 tab
" set listchars=eol:$,tab:>.,trail:~,extends:>,precedes:<
" set list

" copy clipboard
set clipboard=unnamed

" NERDTree map
map <leader>kb :NERDTreeToggle<CR>
" NERDTree 左邊開啟
let NERDTreeWinPos="left"

" Taglist
map <f9> :Tlist<CR>
let Tlist_Use_Right_Window = 1
" 只顯示目前檔案的
let Tlist_Exit_OnlyWindow = 1

" 底線標示目前所在行
set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE

" backspace
set backspace=2

" 模式變換游標模式不同
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" 自動縮排
set autoindent

" vim-multiple-cursors 套件設定
let g:multi_cursor_next_key='<C-d>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" ------ star -----

let mapleader = "\\"
" 開一個新視窗編輯 vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" 重新載入 vimrc
:nnoremap <leader>sv :source $MYVIMRC<cr>

" 輸入 ( 自動補上 )
":inoremap ( ()<Esc>i

" 輸入 { + enter 自動補上 }
":inoremap {<CR> {<CR>}<Esc>ko

" Ctrl + l visual line
:nnoremap <c-l> V<CR>
:inoremap <c-l> <c-c>V<CR>

:inoremap <c-d> <c-c>ddi

:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" jk 回到 normal
:inoremap jk <c-c>

" 選單字
:nnoremap <leader>d bve
:inoremap <leader>d <c-c>bve

" 儲存檔案
:nnoremap <leader>w :w<CR>:echo "saved"<CR>
:inoremap <leader>w <c-c>:wi<CR>

:nnoremap <leader>wq :wq<CR>:echo "saved"<CR>
:inoremap <leader>wq <c-c>:wq<CR>

" Tab 切換
:nnoremap <leader>n :bnext<CR>
:nnoremap <leader>p :bprevious<CR>
":nnoremap <leader>bd :bdelete<CR>
:nnoremap <leader>bd :bp<CR>:bd #<CR>

" page down
:nnoremap <leader>f <c-f>

" page up
:nnoremap <leader>b <c-b>

" 儲存檔案去除多餘空白
autocmd BufWritePre * :%s/\s\+$//e

" 高亮搜尋到的相同字
set hlsearch

" 跳到function
:nnoremap <leader>] <c-]>

" 跳回function
:nnoremap <leader>t <c-t>

" emmet
" 在所有模式下都適用
let g:user_emmet_mode='a'

set mouse=nicr

" copy to clipboard
map <leader>c "*y<CR>

" folding
set foldmethod=indent " 根據縮排
set foldnestmax=1
set nofoldenable
set foldlevel=1

" ------ end -------

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
