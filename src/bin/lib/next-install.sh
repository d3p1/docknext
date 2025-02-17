#!/bin/bash

##
# @description Docknext command to install a Next.js platform
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
    _install_next_platform
}

##
# Install Next.js platform
#
# @return void
##
_install_next_platform() {
    ##
    # @todo For now, it is used a sequence of command to perform installation.
    #       However, it would be better to create an image that already
    #       has an script that execute these steps (and sets permissions
    #       correctly for the `node` user in the `/app` working directory)
    ##
    print_message "Start Next.js installation" "notice"
    docker compose run --rm --user=root cli npx create-next-app@latest ./ --example https://github.com/d3p1/docknext/tree/main/src/next/templates/vanilla
    docker compose run --rm --user=root cli chown -R node:node /app
    print_message "End Next.js installation" "notice"
}

##
# @note Call main
##
main "$@"