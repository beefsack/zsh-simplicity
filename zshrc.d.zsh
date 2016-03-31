#!/usr/bin/env zsh

# Only run once
if [[ -n "$ZSHRCD" ]]; then
	return
fi
export ZSHRCD=1

# Load all files from ~/.zshrc.d
if [[ -d "$HOME/.zshrc.d" ]]; then
	for file in "$HOME"/.zshrc.d/*.zsh; do
		source "$file"
	done
fi
