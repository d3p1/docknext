#!/bin/bash

##
# @description Docknext command to configure a Next.js platform
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh
source $BASE_DIR/lib/utils/execute-command-script.sh

##
# Main
#
# @return void
# @todo   Add `standalone` configuration in project Next.js configuration
# @todo   Implement Next.js image with an script that executes this logic
##
main() {
    _execute_configure_script "configure-services"
}

##
# Execute configuration script
#
# @param  string $1 Script name
# @return void
##
_execute_configure_script() {
    execute_command_script "$BASE_DIR/lib/next-configure" "$1" "$SCRIPT_MODE"
}

##
# @note Call main
##
main "$@"