#!/bin/bash

##
# @description Deploy Next.js environment generated by `docknext init`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
##

##
# @note Import required utilities
##
source $BASE_DIR/lib/utils/log.sh
source $BASE_DIR/lib/utils/envsubst-files.sh

##
# Main
# 
# @return void
##
main() {
    _generate_infra_files
}

##
# Generate infra files in current directory where this script was executed
#
# @return void
##
_generate_infra_files() {
    ##
    # @note Copy required infra files inside current folder
    ##
    print_message "Start copy infra files" "notice"
    cp "$BASE_DIR/etc/docker-compose.yml" docker-compose.yml
    cp "$BASE_DIR/etc/docker-compose.dev.yml" docker-compose.dev.yml
    cp "$BASE_DIR/etc/docker-compose.prod.yml" docker-compose.prod.yml
    cp "$BASE_DIR/etc/.env" .env
    print_message "End copy infra files" "notice"
    
    ##
    # @note Replace environment variables inside `.env` files with
    #       defined environment variables during this script
    ##
    print_message "Start env files generation" "notice"
    envsubst_files ".env" '${SCRIPT_USER_EMAIL},${SCRIPT_DOMAIN},${SCRIPT_NODE_VERSION},${SCRIPT_DOC_ROOT_DIR},${SCRIPT_DOCKER_PATH},${SCRIPT_COMPOSE_PROFILES},${SCRIPT_COMPOSE_FILE}'
    print_message "End env files generation" "notice"
}

##
# @note Call main
##
main "$@"

