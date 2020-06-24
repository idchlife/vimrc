syntax on
set tabstop=2
set expandtab
set softtabstop=0
set shiftwidth=2
set nu

call plug#begin('~/.vim/plugged')
  Plug 'bling/vim-airline'

  "Plug 'yggdroot/indentline'

 	if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  let g:deoplete#enable_at_startup = 1

  Plug 'autozimu/LanguageClient-neovim', {
      \ 'branch': 'next',
      \ 'tag': '0.1.155',
      \ 'do': 'bash install.sh',
      \ }

  Plug 'ionide/Ionide-vim', {
        \ 'do':  'make fsautocomplete',
        \}

  Plug 'l04m33/vlime', {'rtp': 'vim/'}

  Plug 'raimondi/delimitmate'

  Plug 'luochen1990/rainbow'
  let g:rainbow_active = 1


call plug#end()

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" tern
autocmd FileType javascript nnoremap <silent> <buffer> gb :TernDef<CR>

au FileType python setl shiftwidth=2 tabstop=2 softtabstop=0 expandtab
