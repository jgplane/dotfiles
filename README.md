Benefits of this dotfiles setup:
- no extra tooling
- no symlinks
- version controlled
- different branches for different computers
- easy new computer set up

## Setting Up a New Machine

- Zsh is the new default shell on MacOS. To switch to Bash, run:
  ```shell
  chsh -s /bin/bash
  ```
- Double check that you won't be overwriting anything important (in .bash_profile, et al)
  ```shell
  cd ~
  git clone --bare git@github.com:jgplane/dotfiles.git ~/.dotfiles
  alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
  dotfiles pull
  dotfiles checkout -- .
  dotfiles config status.showUntrackedFiles no
  source ~/.bash_profile
  ```
- Set everything up:
  ```shell
  sh ~/dotfiles/setup/mac
  ```
- Create a new branch named after the computer to keep machine-specific configurations separated

## Making Changes

To commit changes, you add them to git as usual, but you cannot use:
```shell
dotfiles add .
```

Instead you have to add each file by name.

If you need to merge just one file from a branch into another, you can like this:
```shell
dotfiles checkout --patch coverhound .vimrc
```

## Starting from Scratch

- [Elliot Jackson's Screencast](https://www.youtube.com/watch?v=awtfkl50bUQ)
- [Guide Based on Hackernews Question](https://news.ycombinator.com/item?id=11070797)
- [Similar Guide for Bitbucket](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

## Troubleshooting

__Can't checkout remote branches__
```bash
dotfiles config remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
dotfiles pull
```

