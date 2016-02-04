alias ls="ls -FGh"
alias ll="ls -l -FGh"
alias la="ls -la -FGh"
alias reload="source ~/.zshrc"
alias v="mvim"
alias be="bundle exec"
alias bi="bundle install"

alias tru="tmux resize-pane -U"
alias trd="tmux resize-pane -D"
alias trl="tmux resize-pane -L"
alias trr="tmux resize-pane -R"
alias tmw="tmux movew"

split-default() {
  tmux split-window -v
  tmux swap-pane -D
  tmux resize-pane -D 15
  tmux split-window -h
  tmux swap-pane -D
  tmux send-keys 'C-l'
}
