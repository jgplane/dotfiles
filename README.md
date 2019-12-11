## Setting Up a New Machine

Install dependencies:
- git
- vim
  - [wintermute colorscheme](https://github.com/jgplane/wintermute)
  - vimwiki
    ```shell
    cd ~/.vim
    mkdir bundle
    cd bundle
    git clone https://github.com/vimwiki/vimwiki.git
    ```
  - `mkdir ~/.vim/swaps`
  - `mkdir ~/.vim/backups`
  - install vimwikis from private repos
- tmux
- tmuxinator

Double check that you won't be overwriting anything important (in .bash_profile, et al)
```shell
cd ~
git clone --bare git@github.com:jgplane/dotfiles.git ~/.dotfiles
dotfiles config status.showUntrackedFiles no
```

Create a new branch in this repo for the machine. This allows me to keep machine-specific configurations separated.

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

## Reference

- [Elliot Jackson's Screencast](https://www.youtube.com/watch?v=awtfkl50bUQ)
- [Guide Based on Hackernews Question](https://news.ycombinator.com/item?id=11070797)
- [Similar Guide for Bitbucket](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
