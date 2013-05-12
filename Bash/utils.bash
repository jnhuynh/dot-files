# http://jondavidjohn.com/blog/2012/12/how-to-accomplish-a-responsive-bash-prompt
parse_git_branch() {
    # http://stackoverflow.com/a/617184 <= Silent commands.
    if git rev-parse > /dev/null 2>/dev/null; then
        branch=`git branch | grep -e ^* | awk '{ print $2 }'`
    fi

    if [[ $branch != "" ]]; then
        echo " ($branch)"
    fi
}

prompt() {
    prompt="${BLUE}\h${NORMAL} |  \w${YELLOW}$(parse_git_branch)${NORMAL}\n$ "
    PS1=$prompt
}

# set_rails_project
# Usage: set_rails_project <project_path>
function set_rails_project {
  export PROJECT="$1"
  reload
}
