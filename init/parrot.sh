#!/bin/zsh
set -e

if ! [ -d "/opt/homebrew/Cellar/terminal-parrot" ]; then
	brew tap jmhobbs/parrot
	brew install terminal-parrot
fi
