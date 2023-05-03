if status is-interactive 
  and not set -q TMUX
    exec tmux
    # Commands to run in interactive sessions can go here
    # eval (zellij setup --generate-auto-start fish | string collect)
end

alias vim=nvim
