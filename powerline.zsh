#!/bin/zsh

hash pip 2>/dev/null
if [[ $? -ne 0 ]]; then
	echo "Please install pip for powerline support, package commonly called python-pip"
	return
fi

local pip_show=$(pip show powerline-status 2>/dev/null)
if [[ -z "$pip_show" ]]; then
	echo "Powerline not installed, installing now"
	sudo pip install powerline-status
	if [[ $? -ne 0 ]]; then
		echo "Failed to install powerline"
		return
	fi
	pip_show=$(pip show powerline-status 2>/dev/null)

	mkdir -p "$HOME/.config/powerline/themes/shell"
	echo '{
	"ext": {
		"shell": {
			"theme": "default_leftonly"
		}
	}
}' > "$HOME/.config/powerline/config.json"
	echo '{
	"segment_data": {
		"branch": {
			"args": {
				"status_colors": true
			}
		}
	}
}' > "$HOME/.config/powerline/themes/shell/default_leftonly.json"
	echo "Created a basic Powerline config at '$HOME/.config/powerline'"
fi

local loc=$(echo "$pip_show" | grep Location: | cut -d ' ' -f 2-)
if [[ $? -ne 0 ]]; then
	echo "Could not find pip site packages directory"
	return
fi
local powerline_script="$loc/powerline/bindings/zsh/powerline.zsh"
if [[ ! -a "$powerline_script" ]]; then
	echo "Could not find powerline script '$powerline_script'"
	#return
fi
powerline-daemon -q
. "$powerline_script"
