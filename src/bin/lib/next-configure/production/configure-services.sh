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
# @note   To copy files to a container, is necessary to start it first
#         (`docker compose up -d web`)
# @note   It is installed required dependencies and the build step,
#         so when the environment is started (`docker compose up -d`)
#         the platform works as expected
#         (on startup the `next start` is executed)
# @link   https://stackoverflow.com/questions/32566624/docker-cp-all-files-from-a-folder-to-existing-container-folder
##
_configure_next() {
    print_message "Start Next.js configuration for prod environment" "notice"
    docker compose up -d web
    docker compose cp "$SCRIPT_DOC_ROOT_DIR/." web:/app
    docker compose run --rm cli npm install
    docker compose run --rm cli npm run build
    print_message "End Next.js configuration for prod environment" "notice"
}

##
# @note Call main
##
main "$@"