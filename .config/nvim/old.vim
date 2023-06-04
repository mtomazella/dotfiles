:set number
:set relativenumber
:set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
:set mouse=a

call plug#begin()

" Telescope
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
" Dev Icons
Plug 'https://github.com/ryanoasis/vim-devicons'        " Developer Icons
:set encoding=UTF-8
" LSP Manager
" :MasonUpdate updates registry contents
Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
Plug 'williamboman/mason-lspconfig.nvim'
" Coc
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Other Plugins
Plug 'https://github.com/vim-airline/vim-airline'        " Airline
Plug 'http://github.com/tpope/vim-surround'              " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree'             " NerdTree
Plug 'https://github.com/tpope/vim-commentary'           " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color'               " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes'  " Retro Scheme
Plug 'vim-airline/vim-airline-themes'				     " Airline themes
Plug 'https://github.com/tc50cal/vim-terminal'           " Vim Terminal
Plug 'https://github.com/preservim/tagbar'               " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors'   " CTRL + N for multiple cursors
Plug 'https://github.com/christoomey/vim-tmux-navigator' " Tmux-Vim Navigations
" Themes
Plug 'marko-cerovac/material.nvim'

call plug#end()

" Set Themes
  let g:airline_theme='abstract'
  " let g:airline_theme='onedark'
  " let g:airline_theme='anderson'
  " let g:airline_theme='challenger-deep'
  " let g:airline_theme='deep-space'
  " let g:airline_theme='vim-dogrun'
  " let g:airline_theme='iceberg'
  " let g:airline_theme='lucid'
  " let g:material_style = "deep ocean"


  " Airline Icons
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
  endif

  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
    

" Key Remapping

  let mapleader = " "

  " " Arrow / Insert Normal
  "   :nnoremap ç i
  "   :nnoremap i k
  "   :nnoremap k j
  "   :nnoremap j h
  " " Arrow / Insert Visual
  "   :vnoremap ç i
  "   :vnoremap i k
  "   :vnoremap k j
  "   :vnoremap j h
  " Quickly insert an empty new line without entering insert mode
    :nnoremap o o<Esc>
    :nnoremap O O<Esc>
  " Delete, not cut
    :nnoremap d "_d
    :nnoremap <leader>d d
  " Tab
    :nnoremap <Tab> >>
    :nnoremap <S-Tab> <<
    :inoremap <Tab> <C-v><Tab>
  " Save
    :nnoremap <C-s> :w<CR>
    :inoremap <C-s> <C-O>:w<CR>
    :vnoremap <C-s> <C-C>:w<CR>
  " COC
    " Make <CR> to accept selected completion item or notify coc.nvim to format
    " <C-g>u breaks current undo, please make your own choice.
    :inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
          \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  " Telescope
    :nnoremap <leader>ff <cmd>Telescope find_files<cr>
    :nnoremap <F1> <cmd>Telescope find_files<cr>
    :nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    :nnoremap <leader>fb <cmd>Telescope buffers<cr>
    :nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  " Tmux-vim navigation
    let g:tmux_navigator_no_mappings = 1
    noremap <S-A-h> :<C-U>TmuxNavigateLeft<cr>
    noremap <S-A-j> :<C-U>TmuxNavigateDown<cr>
    noremap <S-A-k> :<C-U>TmuxNavigateUp<cr>
    noremap <S-A-l> :<C-U>TmuxNavigateRight<cr>
    noremap <S-A-p> :<C-U>TmuxNavigatePrevious<cr>
  " Tab navigation
    nnoremap <C-A-h> gT
    nnoremap <C-A-l> gt
    inoremap <C-A-h> <C-O>gT
    inoremap <C-A-l> <C-O>gt
  " Move line
    " nnoremap <silent><C-A-i> :move -2<CR>
    " noremap <silent><C-A-k> :move +1<CR>
    nnoremap <silent><C-A-k> :move -2<CR>
    noremap <silent><C-A-j> :move +1<CR>
  " Save and close buffer
    nnoremap <C-A-w> :wq<CR>
    inoremap <C-w> <C-O>:wq<CR>
    " Select entire file
    nnoremap vie ggVG

" Config Plugins

  " NerdTree
  let g:NERDTreeWinPos = "right"
  let g:NERDTreeMinimalUI = 1
  let g:NERDTreeDirArrows = 1

  " Enable mason
lua << EOF
  require("mason").setup()
EOF

