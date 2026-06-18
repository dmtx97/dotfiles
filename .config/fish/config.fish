if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx FZF_CTRL_T_OPTS "--reverse --preview 'cat {}'"

pyenv init - fish | source


# opencode
fish_add_path /home/daniel/.opencode/bin
