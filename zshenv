# Created by ta9mi1shi1

##############################
# Environment variables
##############################

export EDITOR="vim"
export GOPATH="$HOME/works/go"
export GO111MODULE="on"
# Tells the shell that it should not add anything to $PATH if it's there already
typeset -U PATH
export PATH="$HOME/.local/bin:$GOPATH/bin:$PATH"
systemctl --user import-environment PATH
systemctl --user import-environment GOPATH
