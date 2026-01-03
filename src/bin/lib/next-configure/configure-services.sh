#!/bin/bash

##
# @description Configure services
#              required by `docknext next-configure`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/next-configure/utils/runtime.sh

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
# @note   Configure custom environment scripts
##
_configure_next() {
    print_message "Start Next.js configuration" "notice"
    update_app_scripts
    print_message "End Next.js configuration" "notice"
}

##
# @note Call main
##
main "$@"