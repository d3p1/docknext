#!/bin/bash

##
# @description Startup script
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Add flag to exit script if there is an error related to a command
##
set -e

##
# @note Init global variables
##
declare BASE_DIR
BASE_DIR="$(dirname "${BASH_SOURCE[0]}")"

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/exec-docker-compose-environment.sh

##
# Main
#
# @return void
##
main() {
    ##
    # @note Check if command is executed inside the Docker Compose environment directory
    ##
    if [ ! -e "docker-compose.yml" ]; then
        echo "This command should be executed inside the Docker Compose environment directory"
        exit 1
    fi

    ##
    # @note Execute Docker Compose environment if it is not running
    ##
    exec_docker_compose_environment

    ##
    # @note Execute development container
    ##
    . "$BASE_DIR/lib/dev.sh"

    exit 0
}

##
# @note Call main
##
main "$@"