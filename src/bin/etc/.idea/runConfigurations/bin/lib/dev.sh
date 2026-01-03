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
    ##
    # @note Because this environment could have different users
    #       depending on the JavaScript runtime used (for instance:
    #       the `bun` image uses the `bun` user, whereas the `node` image
    #       uses the `node` user), we are going to get the container
    #       home directory dynamically to later mount important files
    #       that improve development experience there
    ##
    local CONTAINER_HOME_DIR=$(docker compose run --rm cli bash -c 'echo "$HOME"')

    ##
    # @note It is shared Git configuration (like author information),
    #       to avoid having to define it again in the container
    #       while using Git
    # @note It is mounted the SSH agent socket (`$SSH_AUTH_SOCK`)
    #       to the container. In that way, we can use it to
    #       execute SSH connections to our trusted hosts
    #       without sharing our private keys.
    #       This is useful to work with SSH repositories
    ##
    docker compose run --rm -it -v ~/.gitconfig:${CONTAINER_HOME_DIR}/.gitconfig -v ${SSH_AUTH_SOCK}:/ssh-agent -e SSH_AUTH_SOCK=/ssh-agent cli /bin/bash
}

##
# @note Call main
##
main "$@"