# Load the default .profile
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" 

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# Always surround non-printing commands with \[ \]
export PS1='\n\[\e[1;36m\]● \W $ \[\e[0m\]'
# export PS1='\W $ '

################################################################################
#                                    ALIASES                                   #
################################################################################

# Defaults
alias yardoc="yardoc 'app/**/*.rb' -c --private --protected"

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

# Open vim with the system Ruby version, then switch back to prior version.
# Avoids error with Command-T vim plugin
function sv() {
  current_version=($(rvm current))
  rvm use system ; vim & rvm use $current_version && fg
}

# Takes one argument from command line and returns the vim-wiki diary entries
# that match.
#
# Examples:
#   $ worked_on RCD-1939
#   $ worked_on "broken tests"
function worked_on() {
  paths=(`egrep -lir "($1)" ~/code_wiki/diary`)
  echo '---'
  for i in "${paths[@]}"
  do 
    file="$(basename $i)"
    echo "${file%.*}"
  done
  echo '---'
}

export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
# added by Anaconda3 2019.03 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
export PATH="/usr/local/opt/ruby/bin:$PATH"
