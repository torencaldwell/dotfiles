#!/bin/zsh
set -e

if ! [ -x "$(command -v micro)" ]; then
	if ! [ -x "$(command -v brew)" ]; then
		echo "Homebrew is required to install Micro."
		echo "Would you like to install homebrew now? [y/n]"
		read yn
		case $yn in
		        [Yy]* ) eval $HOME/.dotfiles/init/.brew;;
		        [Nn]* ) exit;;
		        * ) echo "Please answer yes or no.";;
		esac
	fi

	brew install micro
fi

