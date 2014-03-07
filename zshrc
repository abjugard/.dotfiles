## Completion
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit

## Set options
setopt append_history
setopt auto_cd
setopt complete_aliases
setopt complete_in_word
setopt correct
setopt extended_glob
setopt no_match
setopt notify
setopt no_beep
bindkey -e

## History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zhistory

## Export variables for shell
export DOTFILES="$HOME/.dotfiles"

eval $( dircolors -b $DOTFILES/LS_COLOURS/LS_COLORS )
export CLICOLOR=1

export EDITOR=nano

export LANG='en_GB.UTF-8'
export LANGUAGE=$LANG

## Aliases
source $DOTFILES/aliases

[[ -n "${key[PageUp]}"   ]]  && bindkey  "${key[PageUp]}"    history-beginning-search-backward
[[ -n "${key[PageDown]}" ]]  && bindkey  "${key[PageDown]}"  history-beginning-search-forward

bindkey  "^[[A"    history-beginning-search-backward
bindkey  "^[[B"  history-beginning-search-forward

## Antigen
source $DOTFILES/zsh-plugins/antigen/antigen.zsh
antigen bundle nojhan/liquidprompt
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle trapd00r/zsh-syntax-highlighting-filetypes
antigen apply

export PATH="$PATH:$DOTFILES/bin"
