export POWERLINE_HOME=$(pip3 show powerline-status | grep Location | sed 's/Location: \(.*\)/\1/')/powerline/bindings/tmux/powerline.conf
