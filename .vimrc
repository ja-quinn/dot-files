set t_BE=			" Prevent copy/paste problems after exiting vim
set backspace=indent,eol,start	"Fixes issues with delete/backspace
set hlsearch 			"Fixes issues with highlighting
set ignorecase smartcase
set paste

map! <MiddleMouse> <C-R>*
map <F1> <Esc>
imap <F1> <Esc>
filetype plugin on
filetype indent on
filetype plugin indent on

"colorscheme darkblue
"syntax on
set nu "number lines"
set tabstop=3
set shiftwidth=3
set expandtab

"turn on line highlighting
set cursorline 

"Plugins
"Plugin 'davidhalter/jedi-vim'

"Plugin 'zoom.vim'

"this is for lightlin
set laststatus=2
set noshowmode


"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

let g:airline_theme='onedark'


" Expand common skill items to make things a little easier...
ab proc procedure( name()<CR>prog(<CR>	(<CR><CR>	)<CR>))<esc>?name
ab hclf var = hiCreateLabel(<CR>		?name		'var<CR>		?labelText	"label"<CR>		<CR>	)<CR><esc>2?var<esc>
ab hcsf var = hiCreateStringField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
ab hcif var = hiCreateIntField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
ab hcff var = hiCreateFloatField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
ab hcrf var = hiCreateRadioField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		?choices	list("radio1" "radio2")<CR>	<CR>	)<CR><esc>2?var<esc>
ab hctf var = hiCreateToggleField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		?choices	list('(toggleItem ""))<CR>	<CR>	)<CR><esc>2?var<esc>
ab hcbf var = hiCreateButton(<CR>		?name		'var<CR>		?buttonText	"prompt"<CR>		?callback	"callback()"<CR>	)<CR><esc>2?var<esc>
ab hcfr var = hiCreateFrameField(<CR>		?name		'var<CR>		?labelText	"labelText"<CR>	)<CR><esc>2?var<esc>
ab hcaf var = hiCreateAppForm(<CR>		?name		'var<CR>		?formTitle	"title"<CR>		?initialSize	t<CR>		?fields	list(<CR>			list(field	1:0	300:30	100)<CR>		)<CR>		?callback	"callback()"<CR>	)<CR>	hiDisplayForm(var)<CR><esc>3?var<esc>
ab hcwd  var = hiDisplayAppDBox(<CR>		?name		'var<CR>		?dboxBanner	"Warning Text"<CR>		?dboxText	"Warning: Text"<CR>		?dialogType	0<CR>		?buttonLayout		'Close<CR>		)<CR><esc>2?var<esc>
ab hced  var = hiDisplayAppDBox(<CR>		?name		'var<CR>		?dboxBanner	"Error Text"<CR>		?dboxText	"Error: Text"<CR>		?dialogType	1<CR>		?buttonLayout		'Close<CR>		)<CR><esc>2?var<esc>
