set nocompatible
filetype off
syntax on

nmap <F8> :TagbarToggle<CR>
map <C-n> :NERDTreeToggle<CR>
map <F2> :GoRun<CR>
map <silent> <F4> :ccl<CR>

set rtp+=~/.vim/bundle/Vundle.vim
set t_Co=256

" Theme settings
let g:solarized_termcolors=256
let g:rehash256 = 1
set laststatus=2
set background=dark
set noshowmode
set timeoutlen=50
set number

if has('gui_running')
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10 
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar

  let g:airline_powerline_fonts = 1
endif

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'

" Themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'chriskempson/vim-tomorrow-theme'

call vundle#end()

colorscheme molokai
filetype plugin indent on

"let g:UltiSnipsExpandTrigger = "<nop>"
"let g:ulti_expand_or_jump_res = 0
"function ExpandSnippetOrCarriageReturn()
"  let snippet = UltiSnips#ExpandSnippetOrJump()
"  if g:ulti_expand_or_jump_res > 0
"    return snippet
"  else
"    return "\<CR>"
"  endif
"endfunction
"inoremap <expr> <CR> pumvisible() ? "<CR>=ExpandSnippetOrCarriageReturn()<CR>" : "\<CR>"
						
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
let g:ycm_server_keep_logfiles = 1

