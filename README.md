# zsh simplicity

A set of zsh config files you can use at will. Made for people who want minimal configs instead of a large framework.

## Example - sane defaults and Powerline

[Powerline](https://github.com/powerline/powerline) is a prompt that shows extra information, such as VCS branch / status and exit statuses.  It will look familiar to many Vim users; Powerline is a very popular Vim plugin.

![Example](http://i.imgur.com/vgybcxF.png)

```bash
$ wget -O $HOME/.zshrc https://raw.githubusercontent.com/beefsack/zsh-simplicity/master/zshrc.d.zsh
$ mkdir -p $HOME/.zshrc.d
$ cd $HOME/.zshrc.d
$ wget https://raw.githubusercontent.com/beefsack/zsh-simplicity/master/{sane-defaults,powerline}.zsh
```

You may also need to use a [patched font](https://github.com/powerline/fonts) for Powerline to render correctly.

## `zshrc.d.zsh`

`zshrc.d.zsh` sources all files from `$HOME/.zshrc.d/` if it exists.

## `sane-defaults.zsh`

`sane-defaults.zsh` sets a number of options for zsh to improve experience, including:

* Key definitions for keys such as home, end, insert, delete and arrows.
* Completion and correction, including the completion menu, case insensitive matches and inside word matches.
* Allowing changing directory without `cd`.
* Using a directory stack when using `cd` (`pushd` and `popd`.)
* Extended globbing.
* Command history.

## `powerline.zsh`

[Powerline](https://github.com/powerline/powerline) status line as a prompt, including VCS information and exit statuses.  See example image above.
