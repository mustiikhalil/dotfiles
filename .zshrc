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
  gitignore
  swiftpm
)

# Java path
# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"

eval "$(/Users/silly/.local/bin/mise activate zsh)"

export FZF_DEFAULT_COMMAND='find . -path './.git' -prune -o -print'

source $ZSH/oh-my-zsh.sh

alias ls='ls -G'

alias code='code-insiders'
alias coherent-swift='/Users/silly/development/coherent-swift/.build/debug/coherent-swift'
source "$HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

function cleanup() {
   rm -rf ~/Library/Developer/Xcode/DerivedData/*
}

function gfp() {
  git fetch $1 && git pull $1 $2
}

export GOPATH=$HOME/go
PATH="$GOPATH/bin:$PATH"
export GIT_EDITOR=nvim
alias vim=nvim
alias mac_os_old="env /usr/bin/arch -x86_64 /bin/zsh --login"
alias flatc="/Users/silly/development/flatbuffers/Debug/flatc"
alias flatc2.0="/Users/silly/development/flatbuffers/Debug/flatc2.0"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Ruby version
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Wasmer
export WASMER_DIR="/Users/silly/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

# bun completions
[ -s "/Users/silly/.bun/_bun" ] && source "/Users/silly/.bun/_bun"
