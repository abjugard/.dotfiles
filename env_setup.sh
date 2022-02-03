#!/usr/bin/env zsh

if [ -f .setupcomplete ]; then
  echo "Setup already performed."
  exit -1
fi

export DOTS=$(dirname $(realpath -s $0))

git submodule update --init --remote --force

cp -f setup/.* $HOME/

if [ ! -d "$HOME/.config" ]; then
	mkdir $HOME/.config
fi
cp -f $DOTS/config/* $HOME/.config/

## Shell init
mv $HOME/.zshrc $DOTS/zshrc_presetup
touch $HOME/.zshrc
echo "export DOTS=\"$DOTS\"" > $HOME/.zshrc

cat $DOTS/zshrc_template $DOTS/zshrc_presetup | uniq >> $HOME/.zshrc

## fzf
bash fzf/install --all

touch .setupcomplete
