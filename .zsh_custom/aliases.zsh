
###############################################################################
# EXPRESS SHORTCUTS
# 
# alias cdr-dev="cd ~/Documents/Express && ls"
alias cdr-app="cd ~/Documents/Express/app_express.com"
alias cdr-server="cd ~/Documents/Express/raven-server"
alias dev-app="cd ~/Documents/Express/app_express.com && nvim"
alias dev-server="cd ~/Documents/Express/raven-server && nvim"
alias start-app="cd ~/Documents/Express/app_express.com && npm start"
alias start-server="cd ~/Documents/Express/raven-server && npm start"
alias latest-app="cd ~/Documents/Express/app_express.com && git branch && git checkout develop/v5.x && git pull origin develop/v5.x"
alias latest-server="cd ~/Documents/Express/raven-server && git branch && git checkout develop/v4.x && git pull origin develop/v4.x"
alias open-report="open ./coverage/lcov-report/index.html"
alias run-flag-build="~/.dotfiles/scripts/App_Express_Flag_Builder/run.sh"

# SHORTCURTS
#
alias cdr-dev="cd ~/Dev && ls"
alias cdr-dotfiles="cd ~/.dotfiles && ls"
alias cdr-scripts="cd ~/.dotfiles/scripts && ls"
alias cdr-project="cd ~/Dev/ConnectFrame"
alias cdr-projects="cd ~/Dev"
alias edit-dotfiles="code ~/.dotfiles"

###############################################################################
# SHELL HELPERS
#
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
alias refresh="exec $SHELL -l"
alias cl="clear"
alias timestamp="date '+%m%d%Y%H%M%S'"

###############################################################################
# GIT
#
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias branch-clean="~/.dotfiles/scripts/branch-clean.sh"
alias git-reset="git clean --force && git reset --hard"
alias current-branch="~/.dotfiles/scripts/current-branch.sh"
alias git-cut-branch="~/.dotfiles/scripts/git-cut-branch.sh"

# Supabase
alias upgrade-supa='brew upgrade supabase'



