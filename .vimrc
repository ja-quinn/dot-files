"set t_BE=			" Prevent copy/paste problems after exiting vim
 
set backspace=indent,eol,start	"Fixes issues with delete/backspace
set hlsearch 			"Fixes issues with highlighting
set ignorecase smartcase
"set paste

map! <MiddleMouse> <C-R>*
map <F1> <Esc>
imap <F1> <Esc>
imap <m-p> <Nop>
"add date with F3
nnoremap <F3> :put =strftime(\"%c\")<CR>

" In Normal and Visual mode, Shift+Tab will unindent
nnoremap <S-Tab> <<
vnoremap <S-Tab> <
inoremap <S-Tab> <C-d>

filetype plugin on
filetype indent on
filetype plugin indent on

"open adice use files as python or beter highlighting
autocmd BufNewFile, BufRead *.use

"To turn off automatic carriage return (newline insertion) in Vim when using autocomplete
set completeopt=menu,menuone,noselect

set nu "number lines"
set shiftwidth=3
set tabstop=3
set noexpandtab
set termguicolors "use available terminal colour pallette - 24bit in teh case of Konsole

"show lines and cols highlighted in visual mode
set showcmd

"turn on line highlighting
set cursorline 

"onedark theme installed as package
packadd! onedark.vim

"syntax on

"choose light or dark for background style
set background=dark

"Use one dark colour scheme
"colorscheme onedark

"Use slate colour scheme
colorscheme slate

"Use solarized colour scheme
"colorscheme solarized

"airline statusbar installed as a package
let g:airline_theme                             = 'onedark'
let g:airline#extensions#tabline#enabled        = 1 "adds info bar for vim tabs/buffers
let g:airline#extensions#tabline#left_sep       = ' '
let g:airline#extensions#tabline#left_alt_sep   = '|'
let g:airline#extensions#tabline#formatter      = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 1

let g:airline_left_sep                          = '|'
let g:airline_left_alt_sep                      = '|'
let g:airline_right_sep                         = '|'
let g:airline_right_alt_sep                     = '|'

" Rainbow Parentheses Options
"let g:rainbow_active = 0
"
"let g:rainbow_load_separately = [
"    \ [ '*' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.tex' , [['(', ')'], ['\[', '\]']] ],
"    \ [ '*.cpp' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.il' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.ils' , [['(', ')'], ['\[', '\]'], ['{', '}']] ],
"    \ [ '*.{html,htm}' , [['(', ')'], ['\[', '\]'], ['{', '}'], ['<\a[^>]*>', '</[^>]*>']] ],
"    \ ]
"
"let g:rainbow_guifgs = ['yellow', 'magenta', 'green', 'blue', 'yellow', 'black', 'red']
"let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']

"let g:rainbow_conf = {
"    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
"    'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
"    'guis': [''],
"    'cterms': [''],
"    'operators': '_,_',
"    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
"    'separately': {
"        '*': {},
"        'markdown': {
"            'parentheses_options': 'containedin=markdownCode contained', "enable rainbow for code blocks only
"        },
"        'lisp': {
"            'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'], "lisp needs more colors for parentheses :)
"        },
"        'haskell': {
"            'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/\v\{\ze[^-]/ end=/}/ fold'], "the haskell lang pragmas should be excluded
"        },
"        'vim': {
"            'parentheses_options': 'containedin=vimFuncBody', "enable rainbow inside vim function body
"        },
"        'perl': {
"            'syn_name_prefix': 'perlBlockFoldRainbow', "solve the [perl indent-depending-on-syntax problem](https://github.com/luochen1990/rainbow/issues/20)
"        },
"        'stylus': {
"            'parentheses': ['start=/{/ end=/}/ fold contains=@colorableGroup'], "[vim css color](https://github.com/ap/vim-css-color) compatibility
"        },
"        'css': 0, "disable this plugin for css files
"    }
"}



" End of Rainbow Parentheses Options


" Fontsize Adjustment...
map <C-ScrollWheelDown> \\-
map <C-ScrollWheelUp> \\+
map <C-MiddleMouse> \\0
"End of Fontsize Adjustment...
"Set up Align to play nice (may need to run this once)...
":AlignCtrl =lp1P1I

" End of Fontsize Adjustment...

"Align lines on = using +
"xnoremap + :Align =<CR>

"" Nerd Commenter Options
"" Create default mappings
"let g:NERDCreateDefaultMappings = 1
"
"" Add spaces after comment delimiters by default
"let g:NERDSpaceDelims = 1
"
"" Use compact syntax for prettified multi-line comments
"let g:NERDCompactSexyComs = 1
"
"" Align line-wise comment delimiters flush left instead of following code
"" indentation
"let g:NERDDefaultAlign = 'left'
"
"" Set a language to use its alternate delimiters by default
"" let g:NERDAltDelims_java = 1
"
"" Add your own custom formats or override the defaults
"" let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
"
"" Allow commenting and inverting empty lines (useful when commenting a
"" region)
"let g:NERDCommentEmptyLines = 1
"
"" Enable trimming of trailing whitespace when uncommenting
"let g:NERDTrimTrailingWhitespace = 1
"
"" Enable NERDCommenterToggle to check all selected lines is commented or
""  not 
"let g:NERDToggleCheckAllLines = 1

" End of Nerd Commenter Options

"NERDtree options 

"enable NERDtree with just f5
map <F5> :NERDTreeToggle<CR>

"end of NERDtree options

"Tagbar options

"enable Tagbar
"nmap <F8> :TagbarToggle<CR>
"map  <F10> :!ctags -R 
"End of Tagbar options

"auto-pairs options

"let g:AutoPairsShortcutToggle = '<M-q>'

"End of auto-pairs options

"require vim plu for vim-skill - not currently compatible with vim 8 package
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

"Plug 'https://github.com/AugustUnderground/vim-skill' " - removed as highlighting is confusing

"Plugin to have different colors for different paired delimiters eg. ()
"Plug 'frazrepo/vim-rainbow'
"Plug 'luochen1990/rainbow'

"Align Script, align blocks of code on a character
"Plug 'vim-scripts/Align'

"Solarized colourscheme 

" Fontsize Adjustment...
"Plug 'drmikehenry/vim-fontsize'

Plug 'junegunn/fzf'

" Comment out blocks of code with \c<Space> where \ has been defined as <Leader>
Plug 'preservim/nerdcommenter'

"dir structure for file exploration
Plug 'preservim/nerdtree'

"Use vim8 terminal features more in a window within vim
Plug 'voldikss/vim-floaterm'

"Use Tagbar to highlight tags based on scope
Plug 'preservim/tagbar'

" FuzzyFinder provides convenient ways to quickly reach the
" buffer/file/command/bookmark/tag you want. FuzzyFinder searches with the
" fuzzy/partial pattern to which it converted an entered pattern.
Plug 'vim-scripts/FuzzyFinder'

" Automatically generate the end of a pair of delimiters
"Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

"Abbriviations`

" Expand common skill items to make things a little easier...
abbr proc procedure( name()<CR>prog(<CR>	(<CR><CR>	)<CR>))<esc>?name
abbr hclf var = hiCreateLabel(<CR>		?name		'var<CR>		?labelText	"label"<CR>		<CR>	)<CR><esc>2?var<esc>
abbr hcsf var = hiCreateStringField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
abbr hcif var = hiCreateIntField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
abbr hcff var = hiCreateFloatField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		<CR>	)<CR><esc>2?var<esc>
abbr hcrf var = hiCreateRadioField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		?choices	list("radio1" "radio2")<CR>	<CR>	)<CR><esc>2?var<esc>
abbr hctf var = hiCreateToggleField(<CR>		?name		'var<CR>		?prompt		"prompt"<CR>		?choices	list('(toggleItem ""))<CR>	<CR>	)<CR><esc>2?var<esc>
abbr hcbf var = hiCreateButton(<CR>		?name		'var<CR>		?buttonText	"prompt"<CR>		?callback	"callback()"<CR>	)<CR><esc>2?var<esc>
abbr hcfr var = hiCreateFrameField(<CR>		?name		'var<CR>		?labelText	"labelText"<CR>	)<CR><esc>2?var<esc>
abbr hcaf var = hiCreateAppForm(<CR>		?name		'var<CR>		?formTitle	"title"<CR>		?initialSize	t<CR>		?fields	list(<CR>			list(field	1:0	300:30	100)<CR>		)<CR>		?callback	"callback()"<CR>	)<CR>	hiDisplayForm(var)<CR><esc>3?var<esc>
abbr hcwd var = hiDisplayAppDBox(<CR>		?name		'var<CR>		?dboxBanner	"Warning Text"<CR>		?dboxText	"Warning: Text"<CR>		?dialogType	0<CR>		?buttonLayout		'Close<CR>		)<CR><esc>2?var<esc>
abbr hced var = hiDisplayAppDBox(<CR>		?name		'var<CR>		?dboxBanner	"Error Text"<CR>		?dboxText	"Error: Text"<CR>		?dialogType	1<CR>		?buttonLayout		'Close<CR>		)<CR><esc>2?var<esc>

"common typos

abbr adn and
abbr teh the
