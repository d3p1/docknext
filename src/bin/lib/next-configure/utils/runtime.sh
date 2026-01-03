#!/bin/bash

##
# @description Utilities to configure runtime (`node` or `bun`)
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Declare required constants
##
declare APP_FILE="package.json"

##
# Update app scripts so they use these environment commands
#
# @return void
# @note   This logic is shared by the `docknext next-install` command
#         and the `docknext next-configure` command. That is why it is
#         created as an utility function but inside the Next.js configuration
#         scope. Both commands need to configure Next.js so it uses
#         our environment variables that define our scripts
##
update_app_scripts() {
    docker compose run --rm cli sed -i "s#\"dev\":.*,#\"dev\": \"\$DEV_CMD\",#g" "$APP_FILE"
    docker compose run --rm cli sed -i "s#\"build\":.*,#\"build\": \"\$BUILD_CMD\",#g" "$APP_FILE"
    docker compose run --rm cli sed -i "s#\"start\":.*,#\"start\": \"\$START_CMD\",#g" "$APP_FILE"
}

##
# Update app permissions
#
# @return void
##
update_app_permissions() {
    docker compose run --rm --user=root cli bash -c 'chown -R "$RUNTIME_USER":"$RUNTIME_USER" /app'
}