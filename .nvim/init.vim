set number relativenumber

set tabstop=4 softtabstop=4
set expandtab
set smartindent
set shiftwidth=4

set nowrap
set smartcase

set noswapfile
set nobackup

set nohlsearch
set hidden
set noerrorbells
set ignorecase

set termguicolors
set scrolloff=8

set signcolumn=yes
set colorcolumn=80

let mapleader = " "

call plug#begin()
" coc plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/goyo.vim'
" Comment
Plug 'preservim/nerdcommenter'

" Prettier
Plug 'sbdchd/neoformat'

" NERDTree
Plug 'preservim/nerdtree'

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" One dark pro theme
Plug 'joshdick/onedark.vim'

" Dracula
Plug 'dracula/vim', { 'as': 'dracula' }


Plug 'lervag/vimtex'

Plug 'tpope/vim-fugitive'

Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'

" Svelte syntax
Plug 'evanleck/vim-svelte', {'branch': 'main'}

" Plug 'leafOfTree/vim-svelte-plugin'

" Plug 'sirver/ultisnips'
call plug#end()

colorscheme dracula

" Transparent 
"hi Normal guibg=NONE ctermbg=NONE

" NERDTree Keybinds
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Quick Escape
inoremap jk <Esc>
inoremap kj <Esc>

" Fzf bindings
nnoremap <C-p> :Files<CR>

let $FZF_DEFAULT_COMMAND="fd --type f"

" C-Space will start autocomplete
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto select the first one
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" GoTo code navigation.
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Latex keybinds
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" coc keybinds
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

" Symbol rename
nmap <leader>rn <Plug>(coc-rename)

" Splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
