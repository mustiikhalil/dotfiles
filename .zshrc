# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH="/opt/homebrew/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_DISABLE_COMPFIX=true
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  gitignore
  swiftpm
)

eval "$(mise activate zsh)"

export FZF_DEFAULT_COMMAND='find . -path './.git' -prune -o -print'

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'

alias code='code-insiders'
alias coherent-swift='~/development/coherent-swift/.build/debug/coherent-swift'
source "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

function cleanup() {
   rm -rf ~/Library/Developer/Xcode/DerivedData/*
}

function gfpo() {
  git fetch origin && git pull origin $1
}

function gfpu() {
  git fetch upstream && git pull upstream $1
}

function goland() {
  open -na "GoLand.app" --args "$@"
}

export GOPATH=$HOME/go
PATH="$GOPATH/bin:$PATH"
export GIT_EDITOR=nvim
alias vim=nvim
alias flatc="~/development/flatbuffers/Debug/flatc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export WASMTIME_HOME="$HOME/.wasmtime"
export PATH="$WASMTIME_HOME/bin:$PATH"
