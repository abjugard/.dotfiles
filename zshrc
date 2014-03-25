fpath=($HOME/.dotfiles/zsh-completions $fpath)

## Completion
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
autoload -U history-search-end

zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

compinit

## Set options
setopt append_history
#setopt auto_cd
setopt complete_aliases
setopt complete_in_word
setopt correct
setopt extended_glob
setopt no_match
setopt notify
setopt no_beep
setopt histignorespace
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

bindkey "\e[A" history-beginning-search-backward-end
bindkey "\e[B" history-beginning-search-forward-end

## Antigen
source $DOTFILES/zsh-plugins/antigen/antigen.zsh
antigen bundles <<EOBUNDLES
	nojhan/liquidprompt
	command-not-found
	zsh-users/zsh-syntax-highlighting
	trapd00r/zsh-syntax-highlighting-filetypes
	robbyrussell/oh-my-zsh plugins/osx
EOBUNDLES

antigen apply

export PATH="$PATH:$DOTFILES/bin"
