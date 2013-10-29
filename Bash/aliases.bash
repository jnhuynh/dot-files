####################################
#                                  #
# File: aliases                    #
# Description : Configures aliases #
#                                  #
####################################

##### SHELL ####################################################################

alias c="clear"
alias dirs="dirs -v"
alias egrep="env | grep"
alias grep="grep --color=always"
alias hgrep="history | grep"
alias h="history"
alias ls="ls -FGh"
alias ll="ls -l -FGh"
alias la="ls -la -FGh"
alias reload="source ~/.bash_profile"
alias ssh="ssh " # X11 Forwarding "ssh -X"
alias sshC="ssh -N -g -D 8778 cs.uml.edu"
alias today="date '+%Y_%m_%d'"
#alias v="vim"
alias v="mvim"

##### Git ######################################################################

# alias g="git" # Disable to promote use of $git autocompletion
alias cbr="git rev-parse --abbrev-ref HEAD"
alias glgs="glgs.sh"
alias gsts="gsts.sh"
alias clean_git_init="rm -rf .git && git init && git add . && git com -m 'Initial commit.'"

##### Rail, Ruby, Bundle, RVM ##################################################

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias rgu="rvm gemset use"
alias rgl="rvm gemset list"
alias ru="rvm use"
alias rl="rvm list"

################################################################################
