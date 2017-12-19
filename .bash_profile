################################################################################
#                                   EXPORTS                                    #
################################################################################

export PATH=/usr/local/bin:$PATH

# Bash Prompt
export PS1='\[\e[1;30m\]\n[\W] $\[\e[0m\] '

# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 


################################################################################
#                                    ALIASES                                   #
################################################################################

alias rnri='react-native run-ios --simulator="iPad Pro (9.7 inch)"'

# Tmuxinator
alias txr='tmuxinator retrolux'
alias txrm='tmuxinator retrolux-mobile'
alias txa='tmuxinator admin'

# Git
alias glog='git log --graph --decorate'
alias ga='git add'
alias gb='git branch'
alias gco='git checkout'
alias gcod='git checkout develop'
alias gc='git commit -m'
alias gd='git diff'
alias gp='git pull'
alias gpu='git push'
alias gs='git status'

# Dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias da='dotfiles add'
alias db='dotfiles branch'
alias dco='dotfiles checkout'
alias dc='dotfiles commit -m'
alias dd='dotfiles diff'
alias dp='dotfiles pull'
alias dpu='dotfiles push'
alias ds='dotfiles status'

# Git Flow Shortcuts
alias gf='git flow'
alias gfs='git flow feature start'
alias gfp='git flow feature publish'
alias gff='git flow feature finish'
