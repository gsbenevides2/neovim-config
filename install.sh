#/bin/bash

echo 'Set neovim config folder'
mkdir ~/.config/nvim &> /dev/null

echo 'Cloning comfigs'
git clone https://github.com/gsbenevides2/neovim-config ~/.config/nvim &> /dev/null

echo 'Install vim plug'
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim' &> /dev/null

echo 'Installngs plugins'
nvim --headless +PlugInstall +qa &> /dev/null

echo 'Install coc extensions'
nvim --headless "+CocInstall -sync coc-html coc-restclient coc-prettier coc-copilot coc-eslint coc-emmet coc-tsserver coc-styled-components coc-json coc-css coc-sh" +qa &> /dev/null


