# Dotfiles

A collection of shell scripts I use to setup my macOS dev environment

## What does this do?

In the `init` directory, you will notice a bunch of shell scripts. These are used for installing various programs and dependencies that I use on a daily basis for general development (mostly React Native).

This includes:
- [Homebrew](https://brew.sh/)
- [oh-my-zsh](https://ohmyz.sh/)
- [Material Ocean theme for iterm2](https://iterm2colorschemes.com/)
- [micro](https://micro-editor.github.io/)
- [VSCode](https://code.visualstudio.com/)
- [Android Studio](https://developer.android.com/studio)
- [NodeJS](https://nodejs.org/en/)
- Java11 (dependency of android studio)
- cocoapods (and ffi gem for ARM64 machines)
- [terminal-parrot](https://github.com/jmhobbs/terminal-parrot) (runs on shell startup because why not)

Additionally, there is a `.zshrc` file included that is setup to support these dependencies and themes. It can either replace the existing `.zshrc` file or it can be copypasta'd

## How do I use this

Simply run `./setup_environment.sh` to run all of the install scripts in the `init` directory and copy the `.zshrc` to `$HOME`. If a `.zshrc` file already exists in the home directory, it will be renamed to `.zshrc.bak`.

If one fails and you need to re-run a specific install script, you can run `./install.sh <script_name>`. For example: `./install.sh brew` would re-install homebrew
