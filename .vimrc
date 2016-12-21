" Activates Pathogen to load all bundles
execute pathogen#infect()

set nocompatible        " ensure config is not used with Vi

"Colors"
colorscheme DarkIdle
syntax enable           " enables syntax highlighting

"Indentation"
set expandtab           " tabs expand to spaces
set tabstop     =4      " num of visual spaces per tab
set softtabstop =4      " num of spaces per tab in edit
set shiftwidth  =4      " num of spaces to use per indent
set smarttab            " uses shiftwidth for indents instead of tabstop
filetype indent on      " loads filetype specific indentation settings

"UI config"
set number              " enables linenumbers
set relativenumber      " enables relative linenumbers
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlights matching brackets
set showcmd             " display incomplete commands
set cursorline          " highlights the cursor line
set cursorcolumn        " highlights the cursor column
set colorcolumn =80     " colours the 80th column
" displays whitespace as characters
set list listchars=tab:│\ ,trail:·,nbsp:⎵

"Config"
set nomodeline          " disabled for security reasons
set autochdir           " sets the working directory to the current file
set virtualedit =block  " allows blockwise selections
set textwidth   =79     " sets the textwidth formatting to 79 characters (PEP 8)
set lazyredraw          " redraw only when needed
set mouse       =a      " enables mouse in all modes
set wildignorecase      " ignores case on command autocompletion
set formatoptions-=t    " disables formatting for text
au FileType text,markdown setlocal formatoptions+=t "re-enables for text files
filetype plugin on      " loads filetype specific plugin settings
set omnifunc    =syntaxcomplete#Complete
" Ctrl-L will redraw the screen, updating the syntax and de-highlight matches
noremap <silent><c-l> :nohlsearch<cr>
            \:diffupdate<cr>
            \:syntax sync fromstart<cr>
            \<c-l>

" persitent undo configuration
set undofile            " undo persists after closing file
set undodir     =$HOME/.local/share/nvim/undo " sets the undofile directory
silent call system("mkdir -p " . &undodir) " creates the directory


" disables arrow keys
noremap <UP>    <NOP>
noremap <DOWN>  <NOP>
noremap <LEFT>  <NOP>
noremap <RIGHT> <NOP>

"Searching"
"set smartcase           " an uppercase letter will enable case sensitivity
set ignorecase          " searches are case insensitive. use \C to disable
set incsearch           " searches as characters are entered
set hlsearch            " highlights matches

"Folding"
set nofoldenable        " disables initial folding
set foldnestmax =4      " limits folding to the 4th level (Linus)
set foldmethod  =indent " folds by indents

"Movement"
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" allows backspaing over indents, linebreaks, and text that wasn't inserted
set backspace   =indent,eol,start
" backspace, space and cursor keys continue to previous/next lines
set whichwrap   +=<,>,[,]

"Leader?"
inoremap fd <esc>
inoremap df <esc>

" Make the whitespace RED
"highlight ExtraWhitespace ctermbg=red guibg=red
"au BufWinEnter,InsertEnter,InsertLeave * match ExtraWhitespace /\s\+$/
" Can slow things down, but show whitespace as red while typing.
"au InsertCharPre * match ExtraWhitespace /\s\+$/

" Removes trailing witespace on writing to files
" This can be a problem for formats that depend on trailing whitespace (see:
" git format-patch). In such cases, just use `noa w` when saving.
" doesn't consider trailing whitespace in multiline comments
autocmd FileWritePre,FileAppendPre,FilterWritePre,BufWritePre *
            \ :call TrimWhitespace()

" removes trailing whitespace while saving the view and search term
function! TrimWhitespace()
    let l:save = winsaveview()
    %s/\s\+$//ge
    call winrestview(l:save)
endfunc

" indent entire file
noremap <F6> mzgg=G`z
" toggles spellcheck with F7
noremap <F7> :setlocal spell! spelllang=en_au<cr>
inoremap <F7> <c-\><c-o>:setlocal spell! spelllang=en_au<cr>

" jumps to the last cursor position in the file
autocmd BufReadPost *
            \ if line("'\"") > 1 && line("'\"") <= line("$") |
            \   exe "normal! g`\"" |
            \ endif

"Airline"
set laststatus=2        " always enable the status line
set noshowmode          " disable showing current mode
let g:airline_powerline_fonts = 1

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
                \ | wincmd p | diffthis
endif

"function to toggle relative numbers"
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc

" maps Ctrl-Alt-N to toggle relative numbers
nnoremap <C-n> :call NumberToggle()<CR>

function! DisplayColorSchemes()
    let currDir = getcwd()
    exec "cd $VIMRUNTIME/colors"
    for myCol in split(glob("*"), '\n')
        if myCol =~ '\.vim'
            let mycol = substitute(myCol, '\.vim', '', '')
            exec "colorscheme " . mycol
            exec "redraw!"
            echo "colorscheme = ". myCol
            sleep 2
        endif
    endfor
    exec "cd " . currDir
endfunction

map <F8> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

