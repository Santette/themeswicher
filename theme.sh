#!/bin/bash

schemes=("cappuccin-latte" "cappuccin-mocha" "nord" "tokyo-night" "tokyo-night-day")

if [[ " ${schemes[@]} " =~ " ${1} " ]]
then
	# i3 theme
	rm -rf ~/.config/i3/config
	cp ~/themeswicher/i3/$1 ~/.config/i3/config
	# alacritty theme
	rm -rf ~/.config/alacritty/colors/currtheme.yml
	cp ~/themeswicher/alacritty/$1.yml ~/.config/alacritty/colors/currtheme.yml
	# neovim theme
	rm -rf ~/.config/nvim/colorscheme.vim
	cp ~/themeswicher/nvim/$1.vim ~/.config/nvim/colorscheme.vim
    # polybar theme
    rm -rf ~/.config/polybar/config.ini
    cat ~/themeswicher/polybar/$1.ini ~/.config/polybar/base.ini > ~/.config/polybar/config.ini
    # qutebrowser theme
    rm -rf ~/.config/qutebrowser/config.py
    cp ~/themeswicher/qutebrowser/$1.py ~/.config/qutebrowser/config.py
    # rofi
    rm -rf ~/.config/rofi/config
    cp ~/themeswicher/rofi/$1 ~/.config/rofi/config

    # set wallpaper
    pkill nitrogen
    nitrogen --set-zoom-fill --save ~/themeswicher/wallpappers/$1.png

    # restart i3
    i3 restart
else
	echo "Selected theme does not exist"
	echo "Please select one of the following themes"
	echo "${schemes[@]}"
fi


#TODO(sss): add everforest them.inie

#TODO(sss): add alduin theme
