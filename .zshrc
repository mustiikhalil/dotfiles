# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/silly/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  osx
  gitignore
)

# Java path
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'

source "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

function cleanup() {
   rm -rf ~/Library/Developer/Xcode/DerivedData/*
}

PATH="$GOPATH/bin:$PATH"
export GOPATH=$HOME/go

alias flatc="/Users/silly/development/flatbuffers/Debug/flatc"
alias flatc2.0="/Users/silly/development/flatbuffers/Debug/flatc2.0"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ruby version
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
