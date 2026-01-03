#!/bin/bash

##
# @description Docknext command to install a Next.js platform
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh
source $BASE_DIR/lib/next-configure/utils/runtime.sh

##
# Main
#
# @return void
##
main() {
    _install_next
    _configure_next
}

##
# Install Next.js
#
# @return void
##
_install_next() {
    ##
    # @todo For now, it is used a sequence of command to perform installation.
    #       However, it would be better to create an image that already
    #       has an script that execute these steps (and sets permissions
    #       correctly for the `node` user in the `/app` working directory)
    # @todo Perhaps, instead of having multiple variables for init options,
    #       we could create only one variable that defines all of them.
    #       Then, we use it inside the `create-next-app@latest` command
    ##
    print_message "Start Next.js installation" "notice"
    local OPTIONS=()
    if [ -n "$SCRIPT_NEXT_TEMPLATE" ]; then
        OPTIONS+=("--example $SCRIPT_NEXT_TEMPLATE")
    else
        OPTIONS+=("--yes")
        if [ "$SCRIPT_NEXT_USE_SRC_DIR" != "0" ]; then
            OPTIONS+=("--src-dir")
        fi
    fi
    docker compose run --rm --user=root -e OPTIONS="${OPTIONS[*]}" cli bash -c '"${COMMAND_RUNNER}" create-next-app@latest ./ ${OPTIONS[*]}'
    docker compose run --rm --user=root cli chown -R node:node /app
    print_message "End Next.js installation" "notice"
}

##
# Configure Next.js
#
# @return void
# @note   Configure custom environment scripts
##
_configure_next() {
    print_message "Start update Next.js scripts" "notice"
    update_app_scripts
    print_message "End update Next.js scripts" "notice"
}

##
# @note Call main
##
main "$@"