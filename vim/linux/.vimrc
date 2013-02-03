" -----------------   Author: LinQ
" -----------------   Email: fancylinq@163.com
"
"
" ---------------- 快捷键快速查询 ------------------
"
" <C-P>                      --关键字补全
" <C-X><C-L>                 --整行补全
" <C-X><C-O>                 --全能补全
" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠
" :NERDTree                  --启动NERDTree插件

" ---------------- Vundle配置 ----------------
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
Bundle 'taglist.vim'
Bundle 'bufexplorer.zip'
Bundle 'snipMate'
Bundle 'Mark--Karkat'
Bundle 'The-NERD-Commenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'TxtBrowser'
Bundle 'FencView.vim'
Bundle 'The-NERD-tree'
Bundle 'code_complete'
Bundle 'winmanager'
Bundle 'OmniCppComplete'
Bundle 'asins/vimcdoc'
Bundle 'plasticboy/vim-markdown'
Bundle 'desert-warm-256'

filetype plugin indent on    " required!

colorscheme desert-warm-256  " desert256, 终端与gvim颜色相近
set guifont=Monaco\ 10       " 字体 && 字号
set backspace=2              " 设置退格键可用
set autoindent               " 自动对齐
set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set shiftwidth=2             " 换行时行间交错使用2空格
set cindent shiftwidth=2     " 自动缩进2空格
set nu!                      " 显示行号
"set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 开启实时搜索功能
set hlsearch                 " 开启高亮显示结果
set nowrapscan               " 搜索到文件两端时不重新搜索
set vb t_vb=                 " 关闭提示音
au GuiEnter * set t_vb=
set hidden                   " 允许在有未保存的修改时切换缓冲区
set autochdir                " 设定文件浏览器目录为当前目录
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2
"set showmatch               " 显示括号配对情况
"set cursorline              " 突出显示当前行
"set nowrap                  " 设置不自动换行
set writebackup              " 设置无备份文件
set nobackup
"set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,
set tabstop=2                " 设置Tab键的宽度        [等同的空格个数]
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set helplang=cn              " 加载中文帮助

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.s,*.c,*.cpp,*.h,*.cl,*.rb,*.sql,*.sh,*.vim,*.js,*.css,*.html 2match Underlined /.\%81v/


" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1

if has("gui_running")
    winpos 235 235            " 指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=30 columns=150 " 指定窗口大小，lines为高度，columns为宽度
    set guioptions-=m       " 隐藏菜单栏

    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L       " 隐藏左侧滚动条
    set guioptions-=r       " 隐藏右侧滚动条
    set guioptions-=b       " 隐藏底部滚动条
    set showtabline=0       " 隐藏Tab栏
endif


" ---------------------------- Tlist 调用TagList ----------------------
let Tlist_Show_One_File=1 " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1 " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1 " 自动折叠
