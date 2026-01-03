#!/bin/bash

##
# @description Configure `docknext init` services
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh

##
# @note Init required constants
# @link https://hub.docker.com/r/oven/bun
# @link https://hub.docker.com/_/node
##
declare JS_RUNTIME_NODE_KEY="node"
declare JS_RUNTIME_BUN_KEY="bun"
declare JS_RUNTIME_NODE_IMAGE_KEY="node"
declare JS_RUNTIME_BUN_IMAGE_KEY="oven/bun"
declare JS_RUNTIME_NODE_USER="node"
declare JS_RUNTIME_BUN_USER="bun"

##
# Main
#
# @return void
##
main() {
    ##
    # @note Export required environment variables for runtime service
    ##
    _configure_runtime

    ##
    # @note Return with success
    ##
    return 0
}

##
# Configure runtime
#
# @return void
##
_configure_runtime() {
    print_message "Start configuration of runtime environment variables" "notice"

    ##
    # @note Evaluate runtime and export required environment variables
    # @note Taking into consideration the respective runtime, it will
    #       be updated the application scripts
    # @link https://bun.com/docs/guides/ecosystem/nextjs
    ##
    case "$SCRIPT_JS_RUNTIME" in
        "$JS_RUNTIME_NODE_KEY")
            SCRIPT_JS_RUNTIME_MINIMAL_IMAGE="${JS_RUNTIME_NODE_IMAGE_KEY}:${SCRIPT_NODE_VERSION}-alpine"
            SCRIPT_JS_RUNTIME_IMAGE="${JS_RUNTIME_NODE_IMAGE_KEY}:${SCRIPT_NODE_VERSION}"
            SCRIPT_JS_RUNTIME_USER="${JS_RUNTIME_NODE_USER}"
            SCRIPT_DEV_CMD="next dev"
            SCRIPT_BUILD_CMD="next build"
            SCRIPT_START_CMD="next start"
            ;;

        "$JS_RUNTIME_BUN_KEY")
            SCRIPT_JS_RUNTIME_MINIMAL_IMAGE="${JS_RUNTIME_BUN_IMAGE_KEY}:${SCRIPT_BUN_VERSION}-alpine"
            SCRIPT_JS_RUNTIME_IMAGE="${JS_RUNTIME_BUN_IMAGE_KEY}:${SCRIPT_BUN_VERSION}"
            SCRIPT_JS_RUNTIME_USER="${JS_RUNTIME_BUN_USER}"
            SCRIPT_DEV_CMD="bun --bun next dev"
            SCRIPT_BUILD_CMD="bun --bun next build"
            SCRIPT_START_CMD="bun --bun next start"
            ;;
    esac
    export SCRIPT_JS_RUNTIME_MINIMAL_IMAGE
    export SCRIPT_JS_RUNTIME_IMAGE
    export SCRIPT_JS_RUNTIME_USER
    export SCRIPT_DEV_CMD
    export SCRIPT_BUILD_CMD
    export SCRIPT_START_CMD
    print_env_var "SCRIPT_JS_RUNTIME_MINIMAL_IMAGE"
    print_env_var "SCRIPT_JS_RUNTIME_IMAGE"
    print_env_var "SCRIPT_JS_RUNTIME_USER"
    print_env_var "SCRIPT_DEV_CMD"
    print_env_var "SCRIPT_BUILD_CMD"
    print_env_var "SCRIPT_START_CMD"

    print_message "End configuration of runtime environment variables" "notice"
}

##
# @note Call main
##
main "$@"