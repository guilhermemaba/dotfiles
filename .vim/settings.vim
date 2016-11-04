set backspace=indent,eol,start
set backup swapfile updatetime=20000 updatecount=200 undolevels=1000
set cursorline
set encoding=utf-8 fileencoding=utf-8
set foldmethod=indent
set hlsearch incsearch
set laststatus=2
set list
set listchars=tab:→→,eol:¬
set magic
set modeline
set noerrorbells novisualbell
set number
set pastetoggle=<insert>
set shiftwidth=4 softtabstop=4 tabstop=4 expandtab
set tabpagemax=20
set tags=./tags,tags;
set ttyfast showcmd hidden
set wildmenu
set statusline+=%{SyntasticStatuslineFlag()}
set colorcolumn=120
let g:syntastic_python_pylint_post_args="--max-line-length=120"
let g:syntastic_python_flake8_args='--ignore=E501'
