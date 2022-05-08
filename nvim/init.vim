"copiar fuera de vim
"hay que instalar xsel en el sistema
vnoremap <C-c> :w !xsel -b<CR><CR>

set clipboard=unnamedplus
"transparent background
let g:seiya_auto_enable=1
set tabstop=4	
set ts=4 sw=4 "tabstop"
"start with relativenumber
set relativenumber 
"start with line of numbers
set number 
"interac with mouse inside of nvim
set mouse=a
"setear numeros
set numberwidth=1
"cuando copiamos no va a quedar dentro del clipboard  de vim, si no en el so
"set clipboard=unnamed
syntax enable
"mostrar comandos que se ejecutan
set showcmd
set encoding=UTF-8
set showmatch
"identar con 2 espacios
set laststatus=2

call plug#begin('~/.vim/plugged')
"themes
Plug 'flazz/vim-colorschemes'
"mayor movimiento
Plug 'easymotion/vim-easymotion'
"Make sure you use single quotes
"move between windows
Plug 'christoomey/vim-tmux-navigator'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" On-demand loading
Plug 'scrooloose/nerdtree'
"iconos en nerd tree
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'https://github.com/alexdavid/nerdtree_icons'
Plug 'Th3Whit3Wolf/one-nvim'
Plug 'navarasu/onedark.nvim'
Plug 'https://github.com/miyakogi/seiya.vim'
"c#
Plug 'OmniSharp/omnisharp-vim'
"powerline
Plug 'itchyny/lightline.vim'
"coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"python
"Plug 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
"rust
Plug 'rust-lang/rust.vim'
"html
Plug 'mattn/emmet-vim'

Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'
call plug#end()


"emmet
let g:user_emmet_leader_key=','
let g:user_emmet_mode='n'
"easy motion
let g:EasyMotion_do_mapping = 0 " Disable default mappings
"nmap ms <Plug>(easymotion-overwin-f)
nmap ms <Plug>(easymotion-overwin-f2)
"nerdtree atajo
map  mnt :NERDTreeFind<CR> 
"cerrar NERDTREE cuando abrimos otro archivo
let NERDTreeQuitOnOpen=1
"guardar y cerrar 
map   mw :w<CR>
map   mq :q<CR>
map   mdq :q!<CR>

"compilar 
map  mc :! 

"replace ocurrences
map mr :%s// 

let g:gruvbox_contrast_light ='soft'
syntax enable
"colorscheme onedark
"colorscheme OceanicNext
"colorscheme monokai
"colorscheme one-nvim
colorscheme gruvbox
"colorscheme molokai 
"colorscheme welpe 
"colorscheme up 
"colorscheme moody 
""""""""""""""""""""""

"c#
inoremap <expr> <Tab> pumvisible() ? '<C-n>' :                                                                                                                    
\ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-@> coc#refresh()
let g:OmniSharp_highlighting = 0
"desactive syntax highlight
""end c#
