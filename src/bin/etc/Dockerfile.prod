##
# @description Docker image to run the production app
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
# @note        This `Dockerfile` will be copied
#              into the `BASE_HOST_DOC_ROOT_DIR`
#              by the `docknext next-configure` command (in `production` mode).
#              In that way, we define as build context that location
#              to generate a production app image that will be used for the
#              `web` service
# @note        It we do not define `ARG`, they are not recognize
#              when we send it from `docker-compose*` files.
#              The ones that are used to define the base image, must be define
#              before the `FROM` definition to be recognized.
#              The ones that are used inside the base image, should be
#              define inside the `FROM` definition to be recognized
# @note        At build time, `JS_COMMAND_RUNNER` is not being defined,
#              that is why we should send `BASE_JS_COMMAND_RUNNER` as argument.
#              However, at runtime the `JS_COMMAND_RUNNER` is already defined
# @link        https://github.com/leerob/next-self-host/blob/main/Dockerfile
##
ARG BASE_NODE_VERSION
ARG BASE_BUN_VERSION

FROM d3p1/jsruntime:n${BASE_NODE_VERSION}-b${BASE_BUN_VERSION} AS builder
    ARG BASE_REMOTE_DOC_ROOT_DIR
    ARG BASE_JS_COMMAND_RUNNER
    USER dev
    WORKDIR ${BASE_REMOTE_DOC_ROOT_DIR}
    COPY --chown=dev:dev . .
    RUN ${BASE_JS_COMMAND_RUNNER} install
    RUN ${BASE_JS_COMMAND_RUNNER} run build

FROM d3p1/jsruntime:n${BASE_NODE_VERSION}-b${BASE_BUN_VERSION} AS runner
    ARG BASE_REMOTE_DOC_ROOT_DIR
    USER dev
    WORKDIR ${BASE_REMOTE_DOC_ROOT_DIR}
    COPY --from=builder --chown=dev:dev "${BASE_REMOTE_DOC_ROOT_DIR}/public" ./public
    COPY --from=builder --chown=dev:dev "${BASE_REMOTE_DOC_ROOT_DIR}/.next" ./.next
    CMD ${JS_COMMAND_RUNNER} run start