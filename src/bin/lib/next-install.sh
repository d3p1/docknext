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
    # @note The `cli` service uses the project CLI image.
    #       This image has an `init` script that receives as first param
    #       a flag to determine if it is required to execute an installation.
    #       If it is set to `true`, then a Next.js platform installation is
    #       executed. If it is set to `false`, then a Next.js setup is executed
    # @link https://hub.docker.com/r/d3p1/magento-php
    # @todo Implement Next.js image that install platform or setup platform (remember add `standalone` configuration in `package.json`)
    ##
    print_message "Start Next installation" "notice"
    docker compose run --rm cli init 1
    print_message "End Next installation" "notice"
}

##
# @note Call main
##
main "$@"