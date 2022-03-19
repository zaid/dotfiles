" Colorscheme background
set background=dark

" Enable true colors
if (has('termguicolors'))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

  set termguicolors
endif

" Try to load minpac
packadd minpac

if exists('g:loaded_minpac')
  " Init minpac and set the status window to horizontal
  call minpac#init({'status_open': 'horizontal'})

  " Colorscheme plugins
  call minpac#add('dracula/vim', { 'name': 'dracula' })

  " Editor plugins
  call minpac#add('tpope/vim-endwise')
  call minpac#add('tpope/vim-sensible')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('tpope/vim-vinegar')
  call minpac#add('tpope/vim-apathy')

  " Language support plugins
  call minpac#add('sheerun/vim-polyglot')
  call minpac#add('zaid/vim-rec')

  " Search plugins
  call minpac#add('mhinz/vim-grepper')

  " Statusbar plugins
  call minpac#add('tpope/vim-flagship')

  " Tools plugins
  call minpac#add('tpope/vim-rails')
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('tpope/vim-rhubarb')
  call minpac#add('tpope/vim-projectionist')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('tpope/vim-obsession')
  call minpac#add('tpope/vim-dadbod')
  call minpac#add('tpope/vim-tbone')

  " Minpac utility functions
  command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update('', {'do': 'call minpac#status()'})
  command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
  command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()

  " Plugin settings

  " Set colorscheme to dracula
  packadd! dracula
  silent! colorscheme dracula
end

" Spacing
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set list

" Line numbers
set number
set relativenumber

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen
" Searching
set hlsearch    " highlight matches
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

" Keybindings
" -----------

" Mappings for searching files, buffers, commits and tags
noremap <leader>sf :find<Space>
noremap <leader>sb :buffer<Space>
noremap <leader>sc :Gclog --grep<Space>
noremap <leader>st :tag<Space>

" Mappings for Fugitive
noremap <leader>gb :Git blame<CR>
noremap <leader>gd :Gvdiffsplit!<CR>

if executable("rg")
  " Use Ripgrep as our search tool
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m

  " VimGrepper mappings
  noremap <leader>sg :Grepper -tool rg<CR>
endif
