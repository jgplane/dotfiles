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

# ANDROID DEVELOPMENT

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

################################################################################
#                                    ALIASES                                   #
################################################################################

# Movement
alias cd..='cd ../'     # Go back 1 directory level 
alias ..='cd ../'       # Go back 1 directory level
alias ...='cd ../../'   # Go back 2 directory levels
alias ~="cd ~"          # Go Home
alias ll='ls -hA1'      # Preferred 'ls' implementation

# Tmuxinator
alias txr='tmuxinator retrolux'
alias txrm='tmuxinator retrolux-mobile'
alias txa='tmuxinator admin'
alias txk='tmux kill-session'

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

# Rake
alias rtest='TESTOPTS="--fail-fast" rake test'

################################################################################
#                                    FUNCTIONS                                 #
################################################################################

# Opens vim with the system version of Ruby, then switches back to current RVM version.
# Avoids the following error when using Command-T vim plugin:
# "Ignoring GEM_NAME because its extensions are not built."
function sv() {
  IFS=', ' read -r -a array <<< "$(rvm current)"
  current_version="${array[0]}"
  rvm use system
  vim & rvm use $current_version && fg
}

