#!/usr/bin/env zsh

setopt correctall                       # Command correction
setopt extendedglob                     # Extended globbing, eg. `cp ^*.(tar`
setopt autocd                           # Change directory without `cd`
setopt autopushd                        # Make cd work like pushd

alias ls="ls --color=auto"              # ls color
