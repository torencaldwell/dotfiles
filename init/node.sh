#!/bin/zsh
set -e

if ! [ -x "$(command -v node)" ]; then
	brew install node
	brew install watchman
fi
