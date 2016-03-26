#!/bin/zsh

autoload -U compinit && compinit        # Tab completions
autoload -U promptinit && promptinit    # Prompts

setopt correctall                       # Command correction
setopt autocd							# Change directory without `cd`
setopt extendedglob						# Extended globbing, eg. `cp ^*.(tar`
setopt autopushd						# Make cd work like pushd

alias ls="ls --color=auto"				# ls color

# Completion to include menu selection, case insensitive and match in words
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list	'' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' '+l:|=* r:|=*'

# History
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Keyboard shortcuts
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward && stty -ixon
