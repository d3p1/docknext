#!/bin/bash

##
# @description Docknext command to setup a Next.js platform
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
    ##
    # @note Before executing the script that setup a Next.js platform,
    #       it is required to prepare the environment services to meet
    #       conditions needed for a Next.js setup
    ##
    _execute_setup_script "setup-services"
}

##
# Execute setup script
#
# @param  string $1 Script name
# @return void
##
_execute_setup_script() {
    execute_command_script "$BASE_DIR/lib/next-setup" "$1" "$SCRIPT_MODE"
}

##
# @note Call main
##
main "$@"