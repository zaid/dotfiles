" Theme
set background=dark
let g:gruvbox_contrast_dark = "hard"
colorscheme gruvbox

" Spacing
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set list

" Line numbers
set number

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

" Toggle paste mode
set pastetoggle=<F4>

if executable("fzf")
  " Include FZF wrapper
  set rtp+=/usr/local/opt/fzf

  " Files, buffers and commits mappings for FZF
  noremap <leader>sf :Files<CR>
  noremap <leader>sb :Buffers<CR>
  noremap <leader>sc :Commits<CR>
endif

if executable("rg")
  " Use Ripgrep as our search tool
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m

  " VimGrepper mappings
  noremap <leader>g :Grepper -tool rg<CR>
endif
