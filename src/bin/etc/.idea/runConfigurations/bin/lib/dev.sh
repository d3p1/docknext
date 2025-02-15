#!/bin/bash

##
# @description Execute container for development purpose
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# Main
#
# @return void
##
main() {
    docker compose run --rm -it -v ~/.ssh/:/home/node/.ssh/ -v ~/.gitconfig:/home/node/.gitconfig cli /bin/bash
}

##
# @note Call main
##
main "$@"