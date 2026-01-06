##
# @description JavaScript runtime image that supports both `node` and `bun`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
# @link        https://github.com/d3p1/docknext
##

##
# @note Use `node` image and install `bun` into it
# @note Rename `node` user to `dev` user.
#       I do not like to have a `node` user that can use `bun`
# @note It is used the `slim` version instead of the `alpine` one
#       to be able to use `groupmod` and `usermod`
##
FROM oven/bun:1.3.3 AS bun

FROM node:22-slim
    ARG USERNAME="dev"
    ARG GROUPNAME="${USERNAME}"
    ARG HOME="/home/${USERNAME}"
    ENV DOC_ROOT="${HOME}/app"

    ##
    # @note Rename `node` user to `dev` user
    # @note The `groupmod` command modifies
    #       given groupname (`node`) by `-n ${GROUPNAME}`
    # @note The `usermod` command modifies
    #       given username (`node`) by `-l ${USERNAME}`.
    #       It also creates the home directory `-d ${HOME}`, and
    #       it moves home files from the old home directory (`/home/node`)
    #       to the new one (`/home/dev`).
    ##
    RUN groupmod -n ${GROUPNAME} node \
     && usermod -l ${USERNAME} -d ${HOME} -m node

    ##
    # @note Set created user as default user
    ##
    USER ${USERNAME}

    ##
    # @note Set document root as working directory
    ##
    WORKDIR ${DOC_ROOT}

    ##
    # @note Add `SGID` to folder so it is possible to share `dev` group
    #       with created files
    # @link https://www.redhat.com/sysadmin/suid-sgid-sticky-bit
    ##
    RUN chmod g+s ${DOC_ROOT}

    ##
    # @note Install `bun` from `bun` stage
    # @note Install `bunx` from `bun` stage
    ##
    COPY --from=bun /usr/local/bin/bun /usr/local/bin/bun
    COPY --from=bun /usr/local/bin/bunx /usr/local/bin/bunx