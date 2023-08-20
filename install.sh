#!/bin/sh

make_directories() {
	mkdir -p $HOME/.config/
	mkdir -p $HOME/.cache/
	mkdir -p $HOME/.local/bin/
	mkdir -p $HOME/.local/share/fonts
	mkdir -p $HOME/.local/share/icons
}

copy_config() {
	cp ./etc/misc/{.Xresources,.xinitrc,.zshrc} $HOME
	cp -r ./etc/fonts/* $HOME/.local/share/fonts
	cp -r ./etc/icons/* $HOME/.local/share/icons
	cp -r ./cfg/* $HOME/.config
	cp -r ./bin/* $HOME/.local/bin
}

if [ $(basename $PWD) != dots ]; then
	echo "Not inside dots directory."
	exit 1
fi

make_directories
copy_config
fc-cache
