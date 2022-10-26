#!/bin/bash

schemes=("tokyo-night" "tokyo-night-day")

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
	cp ~/themeswicher/nvim/tokyo-night-day.vim ~/.config/nvim/colorscheme.vim
else
	echo "Selected theme does not exist"
	echo "Please select one of the following themes"
	echo "${schemes[@]}"
fi


#TODO(sss): add everforest theme

#TODO(sss): add alduin theme
