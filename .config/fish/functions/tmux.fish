# Defined in - @ line 1
function tmux --description 'alias tmux=tmux -2 attach; or tmux -2 new'
	command tmux -2 attach; or tmux -2 new $argv;
end
