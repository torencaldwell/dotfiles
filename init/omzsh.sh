#!/bin/zsh
set -e

# This script does the following:
	# Installs oh-my-zsh
	# sets the theme
	# installs powerline fonts (required by most themes)

if ! [ -d $HOME/.oh-my-zsh ]; then
	#Install oh-my-zsh
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	#commented out because we can just copypasta .zshrc
		#set theme (will be switched to config variable (maybe yaml?) laterr)
		# if  [ "$ZSH_THEME" != "agnoster" ]; then
			# sed -i '.bak' '/ZSH_THEME/s/.*/ZSH_THEME="agnoster"/' $HOME/.zshrc
			# source $HOME/.zshrc
		# fi

	#Install powerline font
	git clone https://github.com/powerline/fonts.git --depth=1
	
	cd fonts
	./install.sh
	
	cd ..
	rm -rf fonts
	
fi
