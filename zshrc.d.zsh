# Load all files from ~/.zshrc.d
if [[ -d $HOME/.zshrc.d ]]; then
	for file in $HOME/.zshrc.d/*; do
		source $file
	done
fi
