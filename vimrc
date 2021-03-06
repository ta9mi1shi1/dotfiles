" ==== Quoted from an example for a vimrc file ====

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start



" ==== My config ====

" --- Basic config ---
set number " Indicate number of lines
set clipboard=unnamedplus " Set clipboard


" --- Search setting ---
set hlsearch " highlight search phrase
set incsearch


" --- Highlight editing line ---
set cursorline


" --- Make invisible character visible ---
set list
set listchars=tab:>-


" --- Expand tab as 4 space ---
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


" --- Set statusline ---
set laststatus=2


" --- Binary edit mode ---
augroup BinaryXXD
    autocmd!
    autocmd BufReadPre *.bin let &bin=1
    autocmd BufReadPost * if &bin | silent %!xxd -g 1
    autocmd BufReadPost * set ft=xxd | endif
    autocmd BufWritePre * if &bin | %!xxd -r
    autocmd BufWritePre * endif
    autocmd BufWritePost * if &bin | silent %!xxd -g 1
    autocmd BufWritePost * set nomod | endif
augroup END


filetype plugin indent on
syntax on  " Set syntax highlight
