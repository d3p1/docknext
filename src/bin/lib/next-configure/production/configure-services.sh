#!/bin/bash

##
# @description Configure production services
#              required by `docknext next-configure`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh

##
# Main
#
# @return void
##
main() {
    _configure_next
}

##
# Configure Next.js
#
# @return void
# @note   In a production environment, the platform source
#         is not mounted to the service/container.
#         Because of that, it is required to copy it
#         from host to the service/container
# @link   https://stackoverflow.com/questions/32566624/docker-cp-all-files-from-a-folder-to-existing-container-folder
##
_configure_next() {
    print_message "Start Next.js configuration for prod environment" "notice"
    docker compose cp "${BASE_DOC_ROOT_DIR}/." web:/app
    print_message "End Next.js configuration for prod environment" "notice"
}

##
# @note Call main
##
main "$@"