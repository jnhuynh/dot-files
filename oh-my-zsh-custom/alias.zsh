alias reload="source ~/.zshrc"

alias hack="ack --ignore-dir=.bin --ignore-dir=spec --ignore-dir=vendor --ignore-dir=coverage --ignore-dir=tmp -i"
alias ls="ls -FGh"
alias ll="ls -l -FGh"
alias la="ls -la -FGh"

alias v="vim"
alias vs="open -a  /Applications/Visual\ Studio\ Code.app"

alias be="bundle exec"
alias bi="bundle install"
alias bu="bundle update"

alias mt="mocha --timeout 15000 --compilers js:babel-register"

alias pvp="pv --progress --timer --rate --bytes"

alias tru="tmux resize-pane -U"
alias trd="tmux resize-pane -D"
alias trl="tmux resize-pane -L"
alias trr="tmux resize-pane -R"
alias tmw="tmux movew"

alias yda="youtube-dl --audio-format mp3 --audio-quality 0 --embed-thumbnail -x -o '~/Desktop/Music/%(title)s.%(ext)s'"
alias ydv="youtube-dl --audio-quality 0 -o '~/Desktop/Music/%(title)s.%(ext)s'"

convert-mov-mp4() {
  ffmpeg -i $1 -vcodec copy -acodec copy $2
}

split-default() {
  tmux split-window -v
  tmux resize-pane -D 15
  tmux split-window -h
}

alias sd="split-default"

alias ip="curl ipv4.icanhazip.com"

alias kill-simulator="launchctl remove com.apple.CoreSimulator.CoreSimulatorService"

# Toxi Proxy
alias toxi="toxiproxy-cli"
toxi-add-lat() {
  toxiproxy-cli t add $1 --toxicName latency --type latency --attribute=latency=$2 --attribute=jitter=$3
}
toxi-add-timeout() {
  toxiproxy-cli t add $1 --toxicName timeout --type timeout --attribute=timeout=100000
}
toxi-rem() {
  toxiproxy-cli t remove $1 --toxicName $2
}

# Compress
tar-it() {
  tar -cz $1 | pv --progress --timer --rate --bytes > $1.tar.gz
}

# Ghost Script PDF
#
# Source:
# https://stackoverflow.com/questions/4695695/convert-pdf-to-jpg-or-png-using-c-sharp-or-command-line
alias pdf-to-png="gs -dBATCH -dNOPAUSE -sDEVICE=pnggray -r300 -dUseCropBox -sOutputFile=item-%03d.png"

# alias jl="jrnl"
# alias jle="jrnl --edit"
# alias jls="jrnl-show"
# jrnl-show() {
#   jrnl $1 -10
# }

# Dev Chrome
alias devChrome="open /Applications/Google\ Chrome.app --args --user-data-dir="/var/tmp/Chrome dev session" --disable-web-security"
