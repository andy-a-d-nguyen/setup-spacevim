#!/bin/bash

echo "Installing SpaceVim"
git clone https://spacevim.org/git/repos/SpaceVim/ ~/.SpaceVim
mv ~/.config/nvim ~/.config/nvim_back
ln -s ~/.SpaceVim ~/.config/nvim
mkdir ~/.SpaceVim.d/
touch ~/.SpaceVim.d/init.toml
cat "${BASH_SOURCE%/*}/.init.toml" >~/.SpaceVim.d/init.toml
echo "Done..."
