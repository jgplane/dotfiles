__Adding to a New Machine__

Double check that you won't be overwriting anything important (in .bash_profile, et al)
```
cd ~
git clone --bare git@github.com:jgplane/dotfiles.git
dotfiles config status.showUntrackedFiles no
```
Set up vim folder structure:
```
mkdir ~/.vim/swaps
mkdir ~/.vim/backups
```

__Sources__

[Elliot Jackson's Screencast](https://www.youtube.com/watch?v=awtfkl50bUQ)

[Guide Based on Hackernews Question](https://news.ycombinator.com/item?id=11070797)

[Similar Guide for Bitbucket](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
