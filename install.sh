#!/bin/bash

# Init and update submodule (Vundle)
git submodule init
git submodule update

# Warning before replace vim config file
echo "Warning ! You are going to override you ~/.vimrc and ~/vim files/folders."
read -p "Do you want to continue ? [Y/n]" REPLY
echo

if [[ "$REPLY" != "y" ]]; then
    echo "Aborted, nothing updated"
    exit 1
fi

# Copy vim files
rm -f ~/.vimrc
rm -rf ~/.vim
cp -R .vim* ~/.

# Install plugins
vim +PluginInstall +qall

# Install YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe/
./install.sh --clang-completer
cd -

echo "Done !"
