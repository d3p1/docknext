##
# @description Development version of JavaScript runtime image
#              that supports both `node` and `bun`
# @author      C. M. de Picciotto <d3p1@d3p1.dev> (https://d3p1.dev/)
# @link        https://github.com/d3p1/docknext
##

##
# @note It adds useful tools for development environments
##
FROM d3p1/jsruntime:n22.21-b1.3
    ARG USERNAME="dev"

    USER root
    RUN apt-get update \
     && apt-get install -y --no-install-recommends \
        ssh \
        git \
        curl \
        ca-certificates \
        procps \
        nano \
        vim \
     && rm -rf /var/lib/apt/lists/*
    USER ${USERNAME}