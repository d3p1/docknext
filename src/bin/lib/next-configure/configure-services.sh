#!/bin/bash

##
# @description Configure services
#              required by `docknext next-configure`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/envsubst-files.sh
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
# @note   Add `Dockerfile` and `.dockerignore` required for
#         production environments.
#         It is decided to add this step here instead of in a
#         production scope, because this is something related to the
#         platform source code and not to the production environment itself.
#         Additionally, this step is executed here and not with `docknext init`,
#         because Next.js platform should be already present and
#         this is only guarantee with this `docknext next-configure` command
##
_configure_next() {
    print_message "Start Next.js configuration" "notice"

    ##
    # @note Update `package.json` scripts to use environment scripts
    ##
    update_app_scripts

    ##
    # @note Copy `Dockerfile` and `.dockerignore` to app so it is possible
    #       to build production image
    ##
    cp -R "$BASE_DIR/etc/Dockerfile.prod" "$SCRIPT_HOST_DOC_ROOT_DIR/Dockerfile"
    cp -R "$BASE_DIR/etc/.dockerignore.prod" "$SCRIPT_HOST_DOC_ROOT_DIR/.dockerignore"

    ##
    # @note Replace `${SCRIPT_*}` variables inside `Dockerfile` with
    #       current environment data.
    #       In that way, the `Dockerfile` already has useful default data
    #       for the production image generation
    # @note We are sourcing `.env` to get required `${SCRIPT_*}` data.
    #       It is decided to use `${SCRIPT_*}` instead of directly
    #       `.env` variables because this utility identify every
    #       variable that is being replaced by it with the `SCRIPT_*` prefix
    # @todo Improve this logic
    ##
    source .env
    export SCRIPT_JS_COMMAND_RUNNER="$BASE_JS_COMMAND_RUNNER"
    export SCRIPT_BUILD_CMD="$BASE_BUILD_CMD"
    envsubst_files "$SCRIPT_HOST_DOC_ROOT_DIR/Dockerfile" '${SCRIPT_NODE_VERSION},${SCRIPT_BUN_VERSION},${SCRIPT_REMOTE_DOC_ROOT_DIR},${SCRIPT_JS_COMMAND_RUNNER},${SCRIPT_BUILD_CMD}'

    print_message "End Next.js configuration" "notice"
}

##
# @note Call main
##
main "$@"