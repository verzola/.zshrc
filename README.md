# .zshrc

## dependencies
- https://github.com/verzola/aliases
- zsh
- oh-my-zsh
- tmux

## install
```sh
curl https://raw.githubusercontent.com/verzola/.zshrc/master/install.sh | bash
```
## setup terminfo
create a file with name "term-256color-italic.terminfo" and contents:
```
# A xterm-256color based TERMINFO that adds the escape sequences for italic.
xterm-256color-italic|xterm with 256 colors and italic,
        sitm=\E[3m, ritm=\E[23m,
                use=xterm-256color,
```
and execute:
```sh
$ tic xterm-256color-italic.terminfo
```

## true colors
if you want to have truecolors, use a terminal from this list:
https://gist.github.com/XVilka/8346728

if you have any problems with tmux or vim, be sure to use the latest version of both.
compile instructions here:
https://gist.github.com/verzola/2bd147771180766c2d61a861edd68594
https://gist.github.com/verzola/7c0df5ad7cf9a0afa9d63250ba019984
