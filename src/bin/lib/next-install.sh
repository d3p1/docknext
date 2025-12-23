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
    # @todo Perhaps, instead of having multiple variables for init options,
    #       we could create only one variable that defines all of them.
    #       Then, we use it inside the `npx create-next-app@latest` command
    ##
    print_message "Start Next.js installation" "notice"

    if [ -n "$SCRIPT_NEXT_TEMPLATE" ]; then
        docker compose run --rm --user=root cli npx create-next-app@latest ./ --example "$SCRIPT_NEXT_TEMPLATE"
    else
        local OPTIONS=""
        if [ "$SCRIPT_NEXT_USE_SRC_DIR" != "0" ]; then
            OPTIONS+="--src-dir"
        fi
        OPTIONS+=" --yes"

        docker compose run --rm --user=root cli npx create-next-app@latest ./ "$OPTIONS"
    fi
    docker compose run --rm --user=root cli chown -R node:node /app
    print_message "End Next.js installation" "notice"
}

##
# @note Call main
##
main "$@"