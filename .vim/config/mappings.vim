" LEADER
" normal
nnoremap <leader>b     80\|bi<CR><ESC>0
nnoremap <leader>e     :Vexplore<CR>
nnoremap <leader>f     :find<SPACE>
nnoremap <leader>gb    :vert term ++close git blame %<CR>
nnoremap <leader>gg    :vert term git grep -hiIn --break --heading<SPACE>
nnoremap <leader>n     :cnext<CR>
nnoremap <leader>p     :cprev<CR>
nnoremap <leader>say   :call SayHighlighting()<CR>
nnoremap <leader>t     :vimgrep //g ./**/*<LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT><LEFT>
nnoremap <leader>w     :set wrap linebreak nolist
" visual
xnoremap <leader>s     :sort<CR>

" generate vimrc headers
map == :call FillLine('A=')<CR>
map -- :call FillLine('A-')<CR>

" disable arrow keys
noremap <left>  <Nop>
noremap <right> <Nop>
noremap <down>  <Nop>
noremap <up>    <Nop>

" resizing split windows
nnoremap <left>  :5winc ><CR>
nnoremap <right> :5winc <<CR>
nnoremap <down>  :5winc +<CR>
nnoremap <up>    :5winc -<CR>

" go to file under cursor
nnoremap <ENTER> gf

" clear search syntax highlighting
nnoremap <silent><C-l> :nohl<CR><C-l>

" view files open in buffer
nnoremap gb :ls<CR>:b<Space>

nnoremap ;             :
inoremap jj            <Esc>
nnoremap <BS>          <C-O>



