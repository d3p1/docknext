##
# @description Docker image to run container with production app
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
# @link        https://github.com/leerob/next-self-host/blob/main/Dockerfile
##
FROM d3p1/jsruntime:n${BASE_NODE_VERSION}-b${BASE_BUN_VERSION} AS build
    USER dev
    WORKDIR ${BASE_REMOTE_DOC_ROOT_DIR}
    COPY --chown=dev:dev ${BASE_HOST_DOC_ROOT_DIR} .
    RUN ${JS_COMMAND_RUNNER} install
    RUN ${JS_COMMAND_RUNNER} run build

FROM d3p1/jsruntime:n${BASE_NODE_VERSION}-b${BASE_BUN_VERSION} AS runner
    USER dev
    WORKDIR ${BASE_REMOTE_DOC_ROOT_DIR}
    COPY --from=build --chown=dev:dev "${BASE_REMOTE_DOC_ROOT_DIR}/public" ./public
    COPY --from=build --chown=dev:dev "${BASE_REMOTE_DOC_ROOT_DIR}/.next" ./.next
    CMD ${JS_COMMAND_RUNNER} run start