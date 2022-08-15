#!/bin/zsh
set -e

if ! [ -x "$(command -v code)" ]; then
	# Make sure homebrew is installed
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

	# Install VSCode
	brew install --cask visual-studio-code

	#Install some extensions
	code --install-extension pkief.material-icon-theme
	code --install-extension equinusocio.vsc-material-theme
	code --install-extension esbenp.prettier-vscode

fi
