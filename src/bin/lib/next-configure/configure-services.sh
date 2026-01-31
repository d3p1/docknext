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
# @note   Add `Dockerfile` required for production environments.
#         It is decided to add this step here instead of in a
#         production scope, because this is something related to the
#         platform source code and not to the production environment itself.
#         Additionally, this step is executed here and not with `docknext init`,
#         because Next.js platform should be already present and
#         this is only guarantee with this `docknext next-configure` command
##
_configure_next() {
    print_message "Start Next.js configuration" "notice"
    update_app_scripts
    cp -R "$BASE_DIR/etc/services/web/Dockerfile.prod" "$SCRIPT_HOST_DOC_ROOT_DIR/Dockerfile"
    print_message "End Next.js configuration" "notice"
}

##
# @note Call main
##
main "$@"