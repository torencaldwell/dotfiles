#!/bin/zsh
set -e

eval ./init/brew.sh
eval ./init/omzsh.sh
eval ./init/iterm2_theme.sh
eval ./init/micro.sh
eval ./init/vscode.sh
eval ./init/android_studio.sh
eval ./init/node.sh
eval ./init/react-native.sh
eval ./init/parrot.sh

mv $HOME/.zshrc $HOME/.zshrc.bak
cp ./rcfiles/.zshrc $HOME
