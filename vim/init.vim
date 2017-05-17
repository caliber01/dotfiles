call plug#begin()
" Plug 'ryanoasis/vim-devicons'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neopairs.vim'
" Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-fugitive'
" Plug 'rking/ag.vim'
Plug 'digitaltoad/vim-jade'
Plug 'maksimr/vim-jsbeautify'
Plug 'terryma/vim-multiple-cursors'
Plug 'jelera/vim-javascript-syntax'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lokaltog/vim-distinguished'
Plug 'raimondi/delimitmate'
Plug 'christoomey/vim-tmux-navigator'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'othree/yajs.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-obsession'
Plug 'elzr/vim-json'
Plug 'mhinz/vim-startify'
Plug 'skammer/vim-css-color'
" Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'ctrlpvim/ctrlp.vim'
" Plug 'wakatime/vim-wakatime'
Plug 'Yggdroot/indentLine'
Plug 'cakebaker/scss-syntax.vim'
Plug 'sukima/xmledit/'
Plug 'tpope/vim-repeat'
" Plug 'carlitux/deoplete-ternjs'
Plug 'Konfekt/FastFold'
Plug 'chriskempson/base16-vim'
" Plug 'zchee/deoplete-jedi'
call plug#end()

let mapleader=" "

filetype plugin indent on
syntax on

" vim devicons
" set encoding=utf8
" let g:webdevicons_conceal_nerdtree_brackets=1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign=1
" let g:WebDevIconsUnicodeDecorateFolderNodes=1
" let g:DevIconsEnableFoldersOpenClose=1
" let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" let g:webdevicons_enable_ctrlp=1
" if exists("g:loaded_webdevicons")
    " call webdevicons#refresh()
" endif

" cases
set ignorecase
set smartcase

" custom configs
set exrc

" Colors
" colorscheme base16-default
colorscheme solarized
" let base16colorspace=256
set background=dark
set t_Co=256
" very slow
" set cursorline

set mouse-=a

" Folding
set foldmethod=syntax
set foldlevelstart=99
let javaScript_fold=1  " JavaScript

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

"Numbers
set relativenumber
set numberwidth=5

" Errors navigation
map <F3> :lnext<CR>
map <Leader><F3> :lprev<CR>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Easymotion
map <Leader> <Plug>(easymotion-prefix)

" Use one space, not two, after punctuation.
set nojoinspaces

" Make it obvious where 80 characters is
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=7

" Set spellfile to location that is guaranteed to exist, can be symlinked to
" Dropbox or kept in Git and managed outside of thoughtbot/dotfiles using rcm.
set spellfile=$HOME/.vim-spell-en.utf-8.add

" Autocomplete with dictionary words when spell check is on
set complete+=kspell

" Always use vertical diffs
set diffopt+=vertical

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" JSON
" Disable fancy concealing of attribute quotes.
let g:vim_json_syntax_conceal = 0

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_open_list = 2
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_json_enabled_makers = ['jsonlint']
let g:neomake_css_enabled_makers = ['csslint']
let g:neomake_pug_enabled_makers = ['puglint']


" Buffergator

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

" Other

" Nerdtree
nnoremap <Tab> :NERDTreeToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" Indent guides
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 2
let g:indent_guides_auto_colors = 0

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

map <c-f> :call JsBeautify()<cr>

" Tabular
nmap <Leader>{ :Tab /=<CR>
vmap <Leader>{ :Tab /=<CR>
nmap <Leader>} :Tab /:<CR>
vmap <Leader>} :Tab /:<CR>

" vim-css-color
let g:cssColorVimDoNotMessMyUpdatetime = 1

" Deoplete
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#keyword_patterns = {}
let g:deoplete#keyword_patterns.javascript = '[\.\w+]'
let g:deoplete#keyword_patterns.css = '\w+'
let g:deoplete#sources= {}
let g:deoplete#sources._ = []
let g:deoplete#sources.js = []
let g:deoplete#ignore_sources={}
let g:deoplete#ignore_sources.python = ['buffer']
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" omnifuncs
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=tern#Complete
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" tern
let g:tern_map_keys=1
let g:tern_show_argument_hints='on_hold'
let g:tern_request_timeout = 1
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>
autocmd FileType javascript nnoremap <silent> <buffer> gl :TernRefs<CR>
autocmd FileType javascript nnoremap <silent> <buffer> gr :TernRename<CR>

" CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(git|hg|svn))$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
map <Leader>e :CtrlPBuffer<cr>
map <Leader>r :CtrlPMRU<cr>
let g:ctrlp_show_hidden = 1

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"AG
map \ :Ag 


" to disable unsafe commands in your project-specific .vimrc files:
set secure

" Easymotion
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" term navigation
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

" xml editing
let g:xml_syntax_folding=1

" Debugging vim  performance
nnoremap <silent> <leader>DD :exe ":profile start profile.log"<cr>:exe ":profile func *"<cr>:exe ":profile file *"<cr>
nnoremap <silent> <leader>DQ :exe ":profile pause"<cr>:noautocmd qall!<cr>

" gitgutter
let g:gitgutter_eager = 0
let g:gitgutter_realtime = 0
