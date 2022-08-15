#!/bin/zsh
set -e

if ! [[ -d $HOME/.iterm2 ]]; then
	mkdir $HOME/.iterm2
	cd $HOME/.iterm2
	curl https://raw.githubusercontent.com/mbadolato/iTerm2-Color-Schemes/master/schemes/MaterialOcean.itermcolors >> MaterialOcean.itermcolors
fi
