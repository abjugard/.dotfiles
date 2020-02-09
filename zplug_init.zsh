# in env_setup.sh
# # zplug
# echo "source \$DOTS/zplug_init.zsh" >> $HOME/.zshrc
# source zplug_init.zsh

export ZPLUG_HOME="$DOTS/zplug"
source $ZPLUG_HOME/init.zsh

# fzf
zplug "junegunn/fzf-bin", \
    from:gh-r, \
    as:command, \
    rename-to:fzf, \
    use:"*darwin*amd64*"

# pure
zplug mafredri/zsh-async, \
	from:github
zplug sindresorhus/pure, \
	from:github, \
	as:theme, \
	use:pure.zsh

# cross-platform clipboard
zplug "lib/clipboard", from:oh-my-zsh

if ! zplug check --verbose; then
	zplug install
fi

zplug load