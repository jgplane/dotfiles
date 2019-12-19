# =============================================================================
# WORKSPACE AGNOSTIC
# -----------------------------------------------------------------------------
# To ease the pain of using this config on multiple computers: 
# - add core config choices to files below
# - only change those files on master branch
# - update workspace branches using:
#   $ git checkout --patch master <file_name> 
# =============================================================================

source ~/.profile.d/settings
source ~/.profile.d/aliases
source ~/.profile.d/functions

# =============================================================================
# WORKSPACE SPECIFIC
# =============================================================================

# Allows brew installed programs like git to take precedence
# over system installs
export PATH="/usr/local/bin:$PATH"

eval "$(rbenv init -)"  # initializes rbenv
eval "$(nodenv init -)" # initializes nodenv

# Identifies your CoverHound admin / advisor / employee email for development
export CH_USER="jack.plane@coverhound.com"

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# deploy to coverhound staging
function des() {
  mybranch=$(parse_git_branch)
  if [ -z "$mybranch" ]
  then
    echo "Please enter server name and make sure you're in a git repo"
  else
    echo "Deploying $mybranch to $1 staging server"
    echo "Executing: branch=$mybranch bundle exec cap $1 deploy"
    branch=$mybranch bundle exec cap $1 deploy
  fi
}

function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

alias tcc='rbenv shell 2.5.1 && tmuxinator coverhound-commercial'
alias txh='rbenv shell 2.5.1 && tmuxinator coverhound-hspp'

function term_colors() {
  for i in {0..255} ; do
    printf "\x1b[48;5;%sm%3d\e[0m " "$i" "$i"
    if (( i == 15 )) || (( i > 15 )) && (( (i-15) % 6 == 0 )); then
      printf "\n";
    fi
  done
}

