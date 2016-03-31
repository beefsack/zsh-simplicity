# zsh simplicity

A set of zsh config files you can use at will.  Made for people who want
minimal configs instead of a large framework.

You can use all configs, but I recommend reading the `.zsh` scripts in the
repository and only using what you need.

`input.zsh` is highly recommended as it fixes a number of key mappings, such as
arrow keys and other navigation keys.

## Example - input, completion and history

```bash
wget -O $HOME/.zshrc https://raw.githubusercontent.com/beefsack/zsh-simplicity/master/zshrc.d.zsh
mkdir -p $HOME/.zshrc.d
cd $HOME/.zshrc.d
wget https://raw.githubusercontent.com/beefsack/zsh-simplicity/master/{input,completion,history}.zsh
source $HOME/.zshrc
```

## `zshrc.d.zsh`

`zshrc.d.zsh` sources all `.zsh` files from `$HOME/.zshrc.d/` if it exists.

## `input.zsh`

Fixes key mappings for arrow and navigation keys, highly recommended.

## `completion.zsh`

Enables zsh powerful tab completion, including case insensitive completion and
the completion menu.

## `history.zsh`

Saves history to a local file so it persists between sessions.

## `usability.zsh`

`usability.zsh` sets a number of options for zsh to improve usability,
including:

* Command correction.
* Allowing changing directory without `cd`.
* Using a directory stack when using `cd` (`pushd` and `popd`.)
* Extended globbing.
* Enabling color for `ls`

## `nomail.zsh`

Disables "You have new mail" messages.

## `ruby.zsh`

Aliases to disable zsh globbing for rake commands, meaning square brackets
don't need to be escaped.

## `powerline.zsh`

[Powerline](https://github.com/powerline/powerline) is a prompt that shows
extra information, such as VCS branch / status and exit statuses.  It will look
familiar to many Vim users; Powerline is a very popular Vim plugin.

![Example](http://i.imgur.com/vgybcxF.png)

You may also need to use a [patched font](https://github.com/powerline/fonts)
for Powerline to render correctly.
