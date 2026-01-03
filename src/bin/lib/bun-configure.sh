#!/bin/bash

##
# @description Docknext command to configure this Next.js environment
#              to use Bun
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
# @link        https://bun.com/docs/guides/ecosystem/nextjs
# @link        https://bun.com/docs/installation#docker
# @todo        Move this configuration inside
#              `docknext next-install` and
#              `docknext next-configure` commands
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh

##
# @note Declare required constants
# @note Remember that `docknext` commands must be executed
#       where the infra was generated
# @link https://hub.docker.com/r/oven/bun
# @todo Create environment variable that saves infra files location
#       so it can be used absolute paths inside instead of relative ones
##
declare INFRA_FILE="./docker-compose.yml"
declare APP_FILE="$SCRIPT_DOC_ROOT_DIR/package.json"
declare BUN_SERVICE_IMG="oven/bun"

##
# Main
#
# @return void
##
main() {
    _add_bun
}

##
# Add bun
#
# @return void
# @todo   Implement a more robust logic
##
_add_bun() {
    print_message "Start configuring Bun" "notice"

    ##
    # @note Replace services so they use `bun` instead of `node`
    ##
    sed -i "s#node:\${BASE_NODE_VERSION}-alpine#\${BUN_SERVICE_IMG}:alpine#g" "$INFRA_FILE"
    sed -i "s#node:\${BASE_NODE_VERSION}#\${BUN_SERVICE_IMG}#g" "$INFRA_FILE"

    ##
    # @note Replace `next` scripts so they use `bun` instead of `npm`
    # @note It is used the option `-E` provided by `sed` to use
    #       an extended version of regular expressions that supports
    #       capture groups
    ##
    sed -Ei "s#next (dev|build|start)#bun --bun run next \1#g" "$APP_FILE"

    print_message "End configuring bun" "notice"
}

##
# @note Call main
##
main "$@"