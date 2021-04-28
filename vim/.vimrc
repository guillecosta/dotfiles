" PLUGINS
call plug#begin('~/.vim/plugged')

" Basics
Plug 'tpope/vim-sensible'

" IDE-like experience
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Townk/vim-autoclose'

" Snippets
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger='<tab>'

" Haskell
Plug 'neovimhaskell/haskell-vim'
Plug 'meck/vim-brittany'
Plug 'pbrisbin/vim-syntax-shakespeare'

" LaTeX
Plug 'lervag/vimtex'
let g:vimtex_view_method='zathura'

" wal colorscheme
Plug 'dylanaraps/wal.vim'

call plug#end()

"SETTINGS
" Line numbers.
set number
set relativenumber

" Spaces, not tabs.
set tabstop=4
set shiftwidth=4
set expandtab

" Text wrapping.
set wrap linebreak

" Colorscheme.
colorscheme wal

" CoC keybindings.
" Navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" LaTeX settings.
" Make tabs equal to two spaces
autocmd Filetype tex setlocal tabstop=2 shiftwidth=2
