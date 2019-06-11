# Defined in - @ line 1
function mux --description 'alias mux=command tmux -2 attach; or command tmux -2 new'
	command tmux -2 attach; or command tmux -2 new $argv;
end
