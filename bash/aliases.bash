####################################
#                                  #
# File: aliases                    #
# Description : Configures aliases #
#                                  #
####################################

##### SHELL ####################################################################

alias dirs="dirs -v"
alias egrep="env | grep"
alias grep="grep --color=always"
alias hgrep="history | grep"
alias h="history"
alias ls="ls -FGh"
alias ll="ls -l -FGh"
alias la="ls -la -FGh"
alias reload="source ~/.bash_profile"
alias sshC="ssh -N -g -D 8778 cs.uml.edu"
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
alias gi="gem install"
alias gl="gem list"
alias rgu="rvm gemset use"
alias rgd="rvm gemset delete"
alias rgl="rvm gemset list"
alias ru="rvm use"
alias rd="rvm remove"
alias rl="rvm list"

################################################################################
