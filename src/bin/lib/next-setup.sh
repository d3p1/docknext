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
##
main() {
    ##
    # @note Before executing the script that setup a Next.js platform,
    #       it is required to prepare the environment services to meet
    #       conditions needed for a Next.js setup
    ##
    _execute_setup_script "setup-services"

    ##
    # @note The `cli` service uses the project CLI image.
    #       This image has an `init` script that receives as first param
    #       a flag to determine if it is required to execute an installation.
    #       If it is set to `true`, then a Next.js platform installation is
    #       executed. If it is set to `false`, then a Next.js setup is executed
    # @link https://hub.docker.com/r/d3p1/magento-php
    # @todo Implement Next.js image that install platform or setup platform (remember add `standalone` configuration in `package.json`)
    ##
    docker compose run --rm cli init 0
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