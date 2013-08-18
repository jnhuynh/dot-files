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

##### Mark Based File Navigation ###############################################

# http://jeroenjanssens.com/2013/08/16/quickly-navigate-your-filesystem-from-the-command-line.html

export MARKPATH=$HOME/.marks

function jump
{
  cd -P "$MARKPATH/$1" 2>/dev/null || echo "No such mark: $1"
}

function mark
{
  mkdir -p "$MARKPATH"; ln -s "$(pwd)" "$MARKPATH/$1"
}

function unmark
{
  rm -i "$MARKPATH/$1"
}

function marks
{
  \ls -l "$MARKPATH" | tail -n +2 | sed 's/  / /g' | cut -d' ' -f9- | awk -F ' -> ' '{printf "%-10s -> %s\n", $1, $2}'
}

