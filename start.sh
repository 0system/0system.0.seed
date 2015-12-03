#!/bin/bash -e
if [ -z "$npm_config_argv" ]; then
	echo "ERROR: Must run with 'npm install'!"
	exit 1
fi
if [ -z "$HOME" ]; then
	echo "ERROR: 'HOME' environment variable is not set!"
	exit 1
fi
# Source https://github.com/bash-origin/bash.origin
. "$PWD/node_modules/bash.origin/bash.origin"
function init {
	eval BO_SELF_BASH_SOURCE="$BO_READ_SELF_BASH_SOURCE"
	BO_deriveSelfDir ___TMP___ "$BO_SELF_BASH_SOURCE"
	local __BO_DIR__="$___TMP___"

    function Start {
		BO_format "$VERBOSE" "HEADER" "Starting Zero System Seed ..."


        BO_run_node "$__BO_DIR__/server.js" $@


		BO_format "$VERBOSE" "FOOTER"
	}

	Start $@
}
init $@