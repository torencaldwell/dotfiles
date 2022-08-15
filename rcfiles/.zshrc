# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Auto-update behavior (disabled, auto, reminder)
zstyle ':omz:update' mode auto

# Load plugins (careful, too many plugins slow down shell startup)
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

# Paths
	export ZSH="$HOME/.oh-my-zsh"
	export ANDROID_SDK_ROOT="$HOME/Library/Android/sdK"
	export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
	export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
	export PATH=/opt/homebrew/opt/openjdk@11/bin:$PATH
  	export NVM_DIR=$HOME/.nvm
  	
# Aliases
	alias please="sudo"
	alias gst="git status"

	# We only want to set this on ARM64 (apple silicon) machines
	if [[ $(uname -m) == "arm64" ]]; then
		alias pod="arch -x86_64 /usr/local/bin/pod"
	fi

# Shell start
	[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
	[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
	source $ZSH/oh-my-zsh.sh
	parrot -loops 1 -delay 55
