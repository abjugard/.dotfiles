#!/usr/bin/env zsh

export DOTS=$(dirname $(realpath -s $0))

git submodule update --init --remote --force

cp -f setup/.* $HOME/

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
cp -f $DOTS/config/* $HOME/.config/

## ZSH
echo "export DOTS=\"$DOTS\"" >> $HOME/.zshrc
echo "source \$DOTS/zshrc" >> $HOME/.zshrc

## fzf
bash fzf/install --all

touch .setupcomplete
