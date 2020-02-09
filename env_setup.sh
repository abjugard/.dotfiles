#!/usr/bin/env zsh

export DOTS=$(dirname $(realpath -s $0))

git submodule update --init
git submodule foreach git checkout master
git submodule foreach git pull --rebase

cp -f setup/.* $HOME/

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
cp -f $DOTS/config/* $HOME/.config/

## ZSH
echo "export DOTS=\"$DOTS\"" >> $HOME/.zshrc
echo "source \$DOTS/zshrc" >> $HOME/.zshrc

## fzf
bash fzf/install --64 --all

touch .setupcomplete
