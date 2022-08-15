#!/bin/zsh
set -e

if ! [ -d "/Applications/Android Studio.app" ]; then
	brew install --cask android-studio
fi

if ! [ -d "/opt/homebrew/Cellar/openjdk@11" ]; then
	brew install java11

	echo "symlinking java11"
	sudo ln -sfn /usr/local/opt/openjdk@11/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk-11.jdk
fi
