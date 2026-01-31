<div align=center>

# [DOCKNEXT]

[![semantic-release: angular](https://img.shields.io/badge/semantic--release-angular-e10079?logo=semantic-release)](https://github.com/semantic-release/semantic-release)
[![Release](https://github.com/d3p1/docknext/actions/workflows/release.yml/badge.svg)](https://github.com/d3p1/docknext/actions/workflows/release.yml)

</div>

## Introduction

A [Docker](https://www.docker.com/) environment generator for [Next.js](https://nextjs.org/).

The main idea behind this tool is to have an automatic way to generate [Next.js](https://nextjs.org/) environments for development, but also for production. To support this, [Traefik](https://doc.traefik.io/traefik/) has been included to the tech stack, enabling SSL termination and simplifying the generation of SSL certificates for live sites.

> [!NOTE]
> It will continue improving to add other relevant services to the tech stack like SMTP, database, etc. They will be ready to use to facilitate the release of complex apps/developments.

It is worth mentioning that this tool was inspired by the following excellent project that achieves similar goals:

- [Next.js Self Hosting Example](https://github.com/leerob/next-self-host)

## Prerequisites

Before using this tool, ensure that you have:

- User with `sudo` privileges.

- [Git](https://git-scm.com/) installed on your system.

> [!NOTE]
> It is required a user with `sudo` privileges to install required dependencies (check [this](https://github.com/d3p1/docknext/blob/main/src/bin/lib/utils/docker/install.sh) and [this](https://github.com/d3p1/docknext/blob/main/src/bin/lib/utils/mkcert/install.sh)), but also to [update the `/etc/hosts` file with local domain that will be used for development](https://github.com/d3p1/docknext/blob/main/src/bin/lib/init/development/configure-host.sh#L78).

## Installation

To install this tool, run the following command:

```shell
git clone https://github.com/d3p1/docknext.git && \
chmod +x docknext/src/bin/setup/installer.sh   && \
./docknext/src/bin/setup/installer.sh          && \
source ~/.bash_profile                         && \
rm -rf docknext/
```

## Usage

Using this tool is straightforward:

1. Create a [`.docknext_profile` file](https://github.com/d3p1/docknext/blob/main/src/bin/etc/.docknext_profile.sample). This file lets you configure environment variables that define how the project environment should be generated.

2. Execute `docknext init` to generate the necessary [Docker Compose](https://docs.docker.com/compose/) files for the project.

3. Execute `docknext next-install` if you want to install a new Next.js platform to work with the current generated environment.

4. Execute `docknext next-configure` to configure the Next.js project. This will execute a final setup so the existing Next.js project is ready to work with the generated environment.

5. Execute `docknext ide-configure` to simplify the configuration of your IDE, allowing you to work with this generated environment efficiently and effectively.

6. Finally. execute `docker-compose up -d` to start the generated environment. 

> [!IMPORTANT]
> The Next.js project must live in a child directory of the directory where the `docknext init` is executed. This is because Docker only can access build context from the directory where the `docker-compose.yml` file is located, and the production image must copy the app source code to then build it and start the app.   
> Additioanlly, the `docknext ide-configure` for JetBrains considers that the [source code lives in a child directory to configure the startup script](https://github.com/d3p1/docknext/blob/768f96f0e030670cb4d986d80b9ec44beed3fb21/src/bin/etc/.idea/runConfigurations/Dev.xml#L8). 
 
> [!IMPORTANT]
> For now, `docknext ide-configure` only installs [startup scripts](https://www.jetbrains.com/help/webstorm/settings-tools-startup-tasks.html) that are very useful for [WebStorm](https://www.jetbrains.com/webstorm/). However, automating the configuration of other important aspects and supporting additional IDEs is still pending. [This ticket](https://github.com/d3p1/docknext/issues/6) will handle the completion of this requirement.

> [!NOTE]
> To gain a deeper understanding of how this tool works under the hood, visit the [wiki page](https://github.com/d3p1/docknext/wiki) (currently, [_in progress_](https://github.com/d3p1/docknext/issues/4)).

> [!NOTE]
> If you encounter issues while using this tool, refer to the [troubleshooting page](https://github.com/d3p1/docknext/wiki/%5B8%5D-Troubleshooting) for guidance (currently, [_in progress_](https://github.com/d3p1/docknext/issues/4)).

> [!IMPORTANT]
> Please note that [as of now](https://github.com/d3p1/docknext/issues/3), this tool has only been tested on `Debian 12` and requires an environment with `bash` to function correctly.

> [!WARNING]
> Currently, [this environment only works with `node 22.21` and `bun 1.3`](./src/bin/etc/docker-compose.yml). It will be improved the supported versions provided by our [custom image](./src/images/jsruntime).

## Changelog

Detailed changes for each release are documented in [`CHANGELOG.md`](./CHANGELOG.md).

## License

This work is published under [MIT License](./LICENSE).

## Author

Always happy to receive a greeting on:

- [LinkedIn](https://www.linkedin.com/in/cristian-marcelo-de-picciotto/) 
- [Web](https://d3p1.dev/)
