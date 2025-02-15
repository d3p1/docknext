#!/bin/bash

##
# @description Configure production host machine required for `docknext init`
#              and the Next.js environment that it generates
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh
source $BASE_DIR/lib/utils/docker/configure.sh

##
# Main
# 
# @return void
##
main() {
    ##
    # @note Configure `docker` in rootless mode to mitigate potential
    #       vulnerabilities
    ##
    _configure_docker_rootless_mode

    ##
    # @note Configure Traefik service
    ##
    _configure_traefik
}

##
# Configure `docker` in rootless mode
#
# @return void
##
_configure_docker_rootless_mode() {
    print_message "Start configuration of \`docker\` in rootless mode" "notice"
    configure_docker_rootless_mode
    print_message "End configuration of \`docker\` in rootless mode" "notice"
}

##
# Configure Traefik
# 
# @return void
##
_configure_traefik() {
    local traefik_acme_file_path

    ##
    # @note Create file to store SSL certificates
    # @note Set correct permissions to file to avoid error:
    #       `traefik-1  | time="2024-03-26T03:03:26Z" \
    #        level=error msg="The ACME resolver \"le-http\" is skipped from \
    #        the resolvers list because: unable to get ACME account: \
    #        permissions 644 for /etc/traefik/acme.json are too open, \
    #        please use 600"`
    ##
    traefik_acme_file_path="$BASE_DIR/etc/services/traefik/etc/acme.json"
    if [ ! -e traefik_acme_file_path ]; then
        print_message "Start configuration of Traefik" "notice"
        touch "$traefik_acme_file_path"
        chmod 600 "$traefik_acme_file_path"
        print_message "End configuration of Traefik" "notice"
    fi
}

##
# @note Call main
##
main "$@"
