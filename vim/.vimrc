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

" Include FZF wrapper
set rtp+=/usr/local/opt/fzf

" Keybindings
" -----------

" Toggle paste mode
nmap <silent> <F4> :set invpaste<CR>:set paste?<CR>
imap <silent> <F4> <ESC>:set invpaste<CR>:set paste?<CR>

" Find Git merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Files and buffers mappings for FZF
nmap <leader>sf :Files<CR>
nmap <leader>sb :Buffers<CR>
nmap <leader>sc :Commits<CR>

" Use Ripgrep as our search tool
if executable("rg")
  set grepprg=rg\ --vimgrep\ --no-heading
  set grepformat=%f:%l:%c:%m,%f:%l:%m
endif
