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

utime () { date +%s; }

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

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
