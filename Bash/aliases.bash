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
alias sftpGator="sftp -P 2222 jnhuynh@74.53.180.5"
alias ssh="ssh " # X11 Forwarding "ssh -X"
alias sshC="ssh -N -g -D 8778 cs.uml.edu"
alias sshGator="ssh -p 2222 jnhuynh@74.53.180.5"
alias v="vim"
#alias v="mvim"

##### Git ######################################################################

# alias g="git" # Disable to promote use of $git autocompletion
alias cbr="git rev-parse --abbrev-ref HEAD"
alias glgs="glgs.sh"
alias gsts="gsts.sh"

##### Rail, Ruby, Bundle, RVM ##################################################

alias b="bundle"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

################################################################################
