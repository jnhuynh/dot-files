####################################
#                                  #
# File: aliases                    #
# Description : Configures aliases #
#                                  #
####################################

##### SHELL ####################################################################
alias blog="cd ~/Documents/Blog/DIRhuynh"
alias c="clear"
alias courses="cd ~/Documents/Courses"
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
alias sp="set_rails_project"
alias ssh="ssh " # X11 Forwarding "ssh -X"
alias sshC="ssh -N -g -D 8778 cs.uml.edu"
alias sshGator="ssh -p 2222 jnhuynh@74.53.180.5"
#alias v="vim"
alias v="mvim"

##### Git ######################################################################
# alias g="git" # Disable to promote use of $git autocompletion
alias glgs="glgs.sh"
alias gsts="gsts.sh"
alias gdfm="gdfm.sh"

##### Rail, Ruby, Bundle, RVM ##################################################
alias b="bundle"
alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"
alias papp="cd ~/Documents/$PROJECT/app" # $PROJECT is defined in the environment file
alias pctrl="cd ~/Documents/$PROJECT/app/controllers"
alias pmodl="cd ~/Documents/$PROJECT/app/models"
alias ptest="cd ~/Documents/$PROJECT/test"
alias proot="cd ~/Documents/$PROJECT"
alias pspec="cd ~/Documents/$PROJECT/spec"
alias psite="cd ~/Documents/$PROJECT/sites"
alias pview="cd ~/Documents/$PROJECT/app/views"

##### SOURCE CODE SEARCH #######################################################
alias cfind="find . -type f -name "*.c""
alias hfind="find . -type f -name "*.h""
alias sfind="find . -type f -name "*.c" -o -name "*.h""
alias rfind="find . -type f -name "*.rb" -o -name "*.erb""

################################################################################
