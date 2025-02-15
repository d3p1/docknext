#!/bin/bash

##
# @description Configure `docknext init` production services
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
    ##
    # @note Export required environment variables for Traefik
    ##
    _configure_traefik

    ##
    # @note Export required environment variables for Docker Compose
    ##
    _configure_compose
}

##
# Configure Traefik
#
# @return void
# @note   It is used the `DOCKER_PATH` environment variable exposed by the
#         `docker` rootless mode configuration to define
#         `docker` daemon socket location. This environment variable
#         defines the new socket that should be used to communicate with
#         `docker` daemon in rootless mode
# @note   The `docker` socket is mounted in Traefik service so it can work
#         with the infrastructure
#         (i.e.: it allows the recognition of available services)
##
_configure_traefik() {
    print_message "Start init Traefik prod environment variables" "notice"
    SCRIPT_DOCKER_PATH="$DOCKER_PATH"
    export SCRIPT_DOCKER_PATH
    print_env_var "SCRIPT_DOCKER_PATH"
    print_message "End init Traefik prod environment variables" "notice"
}

##
# Configure Docker Compose
#
# @return void
# @note   It is defined the `SCRIPT_COMPOSE_FILE` (used for the `COMPOSE_FILE`)
#         to determine the Docker Compose files to use
#         when `docker compose up -d` is executed
##
_configure_compose() {
    print_message "Start init Docker Compose prod environment variables" "notice"
    SCRIPT_COMPOSE_FILE="docker-compose.yml:docker-compose.prod.yml"
    export SCRIPT_COMPOSE_FILE
    print_env_var "SCRIPT_COMPOSE_FILE"
    print_message "End init Docker Compose prod environment variables" "notice"
}

##
# @note Call main
##
main "$@"