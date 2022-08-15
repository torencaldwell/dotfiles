#!/bin/zsh
set -e

if ! [ -x "$(command -v brew)" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    	eval "$(/opt/homebrew/bin/brew shellenv)"
fi
