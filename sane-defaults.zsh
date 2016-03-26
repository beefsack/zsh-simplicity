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
stty -ixon
bindkey -e
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kich1]}" overwrite-mode
bindkey "${terminfo[kdch1]}" delete-char
bindkey "${terminfo[kcuu1]}" up-line-or-history
bindkey "${terminfo[kcud1]}" down-line-or-history
bindkey "${terminfo[kcub1]}" backward-char
bindkey "${terminfo[kcuf1]}" forward-char
