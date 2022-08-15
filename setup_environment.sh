#!/bin/zsh
set -e

for file in ./init/*.sh; do
	eval "$file"
done

mv $HOME/.zshrc $HOME/.zshrc.bak
cp ./rcfiles/.zshrc $HOME
