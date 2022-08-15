#!/bin/zsh
set -e

if ! [ -x "$(command -v pod)" ]; then
	sudo gem install cocoapods

	if [[ $(uname -m) == "arm64" ]]; then
		sudo arch -x86_64 gem install ffi
	fi
fi
