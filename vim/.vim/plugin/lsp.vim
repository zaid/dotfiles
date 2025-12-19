vim9script

var lspServers: list<dict<any>>

if executable('clangd')
  add(lspServers, {
    name: 'c/cpp',
    filetype: ['c', 'cpp'],
    path: '/usr/bin/clangd',
    args: ['--background-index', '--clang-tidy']
  })
endif

if executable('expert')
  add(lspServers, {
    name: 'elixir',
    filetype: ['elixir', 'eelixir', 'heex'],
    path: expand('~/.local/bin/expert'),
    args: ['--stdio']
  })
endif

call LspAddServer(lspServers)

# Setup auto-complete and mappings for LSP-supported filetypes
augroup lsp_group
  autocmd!
  autocmd User LspAttached noremap gd :LspGotoDefinition <cr>
  autocmd User LspAttached noremap K :LspHover <cr>
  autocmd User LspAttached noremap [g :LspDiagPrev <cr>
  autocmd User LspAttached noremap ]g :LspDiagNext <cr>
augroup END
