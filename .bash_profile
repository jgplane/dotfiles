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

eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"

alias ydl='youtube-dl -f mp4'

