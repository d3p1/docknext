## [1.21.1](https://github.com/d3p1/docknext/compare/v1.21.0...v1.21.1) (2026-03-01)


### Bug Fixes

* adjust docker compose project name so it does not use not allowed uppercase [[#1](https://github.com/d3p1/docknext/issues/1)] ([77ff16a](https://github.com/d3p1/docknext/commit/77ff16ab838a36bc2e24689602d8f1030257a934))

# [1.21.0](https://github.com/d3p1/docknext/compare/v1.20.0...v1.21.0) (2026-03-01)


### Features

* add docknext up command [[#1](https://github.com/d3p1/docknext/issues/1)] ([cf7d4dd](https://github.com/d3p1/docknext/commit/cf7d4ddcfbc7c7deba3ee184534d5ff1e9fa58c0))

# [1.20.0](https://github.com/d3p1/docknext/compare/v1.19.0...v1.20.0) (2026-02-28)


### Features

* add release ID machanism for production deploy [[#1](https://github.com/d3p1/docknext/issues/1)] ([495eddc](https://github.com/d3p1/docknext/commit/495eddc58ed76735a59eeb97b2aa56506e5276de))

# [1.19.0](https://github.com/d3p1/docknext/compare/v1.18.1...v1.19.0) (2026-02-26)


### Features

* add .dockerignore file to avoid building production image with environment files [[#1](https://github.com/d3p1/docknext/issues/1)] ([dce2784](https://github.com/d3p1/docknext/commit/dce278488871b39e8670af6b3cb45aeab96105d2))

## [1.18.1](https://github.com/d3p1/docknext/compare/v1.18.0...v1.18.1) (2026-02-07)


### Bug Fixes

* adjust generation of production dockerfile for web service [[#13](https://github.com/d3p1/docknext/issues/13)] ([b97178c](https://github.com/d3p1/docknext/commit/b97178c2d824436fcde64b4ff46fde249b13da6f))
* adjust IDE startup script [[#1](https://github.com/d3p1/docknext/issues/1)] ([eca1960](https://github.com/d3p1/docknext/commit/eca196046fd6004e51c9b272232923c3cb3db702))

# [1.18.0](https://github.com/d3p1/docknext/compare/v1.17.7...v1.18.0) (2026-02-07)


### Features

* improve default argument values on production dockerfile generation [[#13](https://github.com/d3p1/docknext/issues/13)] ([217a553](https://github.com/d3p1/docknext/commit/217a553cf83d02225e1c1d80f14dbcd9436caa14))
* improve how production environments pull, build and use web production image [[#13](https://github.com/d3p1/docknext/issues/13)] ([71547ec](https://github.com/d3p1/docknext/commit/71547ecb7dc521fdd76ab7b6f71fb7569d77711e))

## [1.17.7](https://github.com/d3p1/docknext/compare/v1.17.6...v1.17.7) (2026-01-31)


### Bug Fixes

* copy required node modules for start script into production image [[#1](https://github.com/d3p1/docknext/issues/1)] ([982b2c2](https://github.com/d3p1/docknext/commit/982b2c2073e7ee27268b728580c6d00cfb98e6ba))

## [1.17.6](https://github.com/d3p1/docknext/compare/v1.17.5...v1.17.6) (2026-01-31)


### Bug Fixes

* adjust copy of next binary for production environments [[#1](https://github.com/d3p1/docknext/issues/1)] ([0371668](https://github.com/d3p1/docknext/commit/0371668114655cbec991d9127447c8f336ffcce3))

## [1.17.5](https://github.com/d3p1/docknext/compare/v1.17.4...v1.17.5) (2026-01-31)


### Bug Fixes

* solve next not found for start script in production environments [[#1](https://github.com/d3p1/docknext/issues/1)] ([8c545f2](https://github.com/d3p1/docknext/commit/8c545f2ae71b7fe07da608b0911b4e900ec26cf7))

## [1.17.4](https://github.com/d3p1/docknext/compare/v1.17.3...v1.17.4) (2026-01-31)


### Bug Fixes

* adjust production image generation [[#1](https://github.com/d3p1/docknext/issues/1)] ([2a9aff5](https://github.com/d3p1/docknext/commit/2a9aff518e63a5ff6ebf157c40cd6461f89a1867))

## [1.17.3](https://github.com/d3p1/docknext/compare/v1.17.2...v1.17.3) (2026-01-31)


### Bug Fixes

* adjust Dockerfile.prod copy location on next configure logic [[#1](https://github.com/d3p1/docknext/issues/1)] ([02abd00](https://github.com/d3p1/docknext/commit/02abd00affc520de34f25116f721c405a7a3889e))

## [1.17.2](https://github.com/d3p1/docknext/compare/v1.17.1...v1.17.2) (2026-01-31)


### Bug Fixes

* adjust JetBrains IDE startup script [[#1](https://github.com/d3p1/docknext/issues/1)] ([768f96f](https://github.com/d3p1/docknext/commit/768f96f0e030670cb4d986d80b9ec44beed3fb21))

## [1.17.1](https://github.com/d3p1/docknext/compare/v1.17.0...v1.17.1) (2026-01-31)


### Bug Fixes

* improve configure next command so it copies production Dockerfile [[#1](https://github.com/d3p1/docknext/issues/1)] ([91a5be1](https://github.com/d3p1/docknext/commit/91a5be1814a7f4c61c6c056e200b767510fc77f2))
* improve docker compose production file so it builds new Dockerfile inside source code [[#1](https://github.com/d3p1/docknext/issues/1)] ([e61a96b](https://github.com/d3p1/docknext/commit/e61a96b23c8d4053cc909489bf2ec3345a687a33))
* improve docker production image [[#1](https://github.com/d3p1/docknext/issues/1)] ([2358585](https://github.com/d3p1/docknext/commit/2358585ee3ec01dfd104bd4fbf5daf3689a9914e))

# [1.17.0](https://github.com/d3p1/docknext/compare/v1.16.2...v1.17.0) (2026-01-30)


### Features

* improve how production app is generated [[#1](https://github.com/d3p1/docknext/issues/1)] ([bedca28](https://github.com/d3p1/docknext/commit/bedca28fd6d1e21cb3d5333660138d83a3042363))

## [1.16.2](https://github.com/d3p1/docknext/compare/v1.16.1...v1.16.2) (2026-01-06)


### Bug Fixes

* improve how node and bun versions are handled [[#1](https://github.com/d3p1/docknext/issues/1)] ([697cc90](https://github.com/d3p1/docknext/commit/697cc904dd42052fccf37eca2d59fd5dfc1678ed))

## [1.16.1](https://github.com/d3p1/docknext/compare/v1.16.0...v1.16.1) (2026-01-06)


### Bug Fixes

* add necessary runtime user environment variable [[#1](https://github.com/d3p1/docknext/issues/1)] ([8159976](https://github.com/d3p1/docknext/commit/81599765642d9a05814508099396e2be942289f8))
* improve how document root location is handled [[#1](https://github.com/d3p1/docknext/issues/1)] ([aada1c0](https://github.com/d3p1/docknext/commit/aada1c03dd1c85bd1c064e02de559c1b7e3545e8))

# [1.16.0](https://github.com/d3p1/docknext/compare/v1.15.0...v1.16.0) (2026-01-05)


### Bug Fixes

* improve js runtime image names [[#1](https://github.com/d3p1/docknext/issues/1)] ([d230583](https://github.com/d3p1/docknext/commit/d2305837ed78f648ea340caeb5d491e263713688))


### Features

* add custom js runtime image to the environment [[#1](https://github.com/d3p1/docknext/issues/1)] ([3dcc0cb](https://github.com/d3p1/docknext/commit/3dcc0cb5a05695ddb129c7bf59ad66781584688f))

# [1.15.0](https://github.com/d3p1/docknext/compare/v1.14.0...v1.15.0) (2026-01-05)


### Features

* add js runtime images [[#1](https://github.com/d3p1/docknext/issues/1)] ([16bc69c](https://github.com/d3p1/docknext/commit/16bc69ca60f1f447e45bcff1b3ff7987bd92f7e8))

# [1.14.0](https://github.com/d3p1/docknext/compare/v1.13.5...v1.14.0) (2026-01-03)


### Features

* improve how traefik version is handled [[#1](https://github.com/d3p1/docknext/issues/1)] ([5aa00fb](https://github.com/d3p1/docknext/commit/5aa00fb2e1faf7960014e031c9dc2210cac5d299))

## [1.13.5](https://github.com/d3p1/docknext/compare/v1.13.4...v1.13.5) (2026-01-03)


### Bug Fixes

* add commandx runner and command runner to execute with each of them respective app scripts [[#1](https://github.com/d3p1/docknext/issues/1)] ([6d82f73](https://github.com/d3p1/docknext/commit/6d82f73480da4d29e74d2bac0cf182a8edc9b9f9))
* adjust update app script logic [[#1](https://github.com/d3p1/docknext/issues/1)] ([9c1aabc](https://github.com/d3p1/docknext/commit/9c1aabc0fe90aad336a8f4ff01c66f73a94b5c5a))

## [1.13.4](https://github.com/d3p1/docknext/compare/v1.13.3...v1.13.4) (2026-01-03)


### Bug Fixes

* add correct runner for entry point scripts [[#1](https://github.com/d3p1/docknext/issues/1)] ([51a2e54](https://github.com/d3p1/docknext/commit/51a2e541f5b62ac686bd9ef9059d554671257b00))

## [1.13.3](https://github.com/d3p1/docknext/compare/v1.13.2...v1.13.3) (2026-01-03)


### Bug Fixes

* add correct runner for entry point scripts [[#1](https://github.com/d3p1/docknext/issues/1)] ([68d8677](https://github.com/d3p1/docknext/commit/68d8677f473b74faca63bd86316682fe75c94316))
* adjust update app scripts [[#1](https://github.com/d3p1/docknext/issues/1)] ([89e2bc5](https://github.com/d3p1/docknext/commit/89e2bc5f225108f67721818df49fe27a1a81f4b7))

## [1.13.2](https://github.com/d3p1/docknext/compare/v1.13.1...v1.13.2) (2026-01-03)


### Bug Fixes

* improve adjust app permissions command to use runtime user [[#1](https://github.com/d3p1/docknext/issues/1)] ([f962c66](https://github.com/d3p1/docknext/commit/f962c6664c3dd1bf3daedb1aaaddc5905fb2eb9f))

## [1.13.1](https://github.com/d3p1/docknext/compare/v1.13.0...v1.13.1) (2026-01-03)


### Bug Fixes

* add command runner taking into consideration defined runtime [[#1](https://github.com/d3p1/docknext/issues/1)] ([2743aef](https://github.com/d3p1/docknext/commit/2743aef5eded3fd8e554524cf910de08c2059d97))

# [1.13.0](https://github.com/d3p1/docknext/compare/v1.12.0...v1.13.0) (2026-01-03)


### Features

* add node and bun runtime configuration in docknext init command [[#1](https://github.com/d3p1/docknext/issues/1)] ([8c3cebf](https://github.com/d3p1/docknext/commit/8c3cebf1769d9ac72e94329f1222fc2a48cb530d))
* implement utility that updates next scripts to use custom ones [[#1](https://github.com/d3p1/docknext/issues/1)] ([2a1bd25](https://github.com/d3p1/docknext/commit/2a1bd2571dc8320e38b9dcfabda674eec5874865))
* updates next scripts in docknext next-configure command [[#1](https://github.com/d3p1/docknext/issues/1)] ([616b139](https://github.com/d3p1/docknext/commit/616b139844106b4462565cf5cfa05ea3d9dc2f52))
* updates next scripts in docknext next-install command [[#1](https://github.com/d3p1/docknext/issues/1)] ([a6106fd](https://github.com/d3p1/docknext/commit/a6106fd2f65ef84b026f989abe0f8235c172e325))

# [1.12.0](https://github.com/d3p1/docknext/compare/v1.11.2...v1.12.0) (2026-01-03)


### Features

* adjust ide-configure command so it dynamically get the container home directory [[#1](https://github.com/d3p1/docknext/issues/1)] ([89fd9b5](https://github.com/d3p1/docknext/commit/89fd9b588b26ec43c9d135eb33bcae57e77cd653))
* define new environment varibles that define the use of bun as js runtime [[#1](https://github.com/d3p1/docknext/issues/1)] ([4157e58](https://github.com/d3p1/docknext/commit/4157e58b87ee4af42804dee191cc3176025fe39d))

## [1.11.2](https://github.com/d3p1/docknext/compare/v1.11.1...v1.11.2) (2026-01-03)


### Bug Fixes

* remove unneeded bun-configure command [[#1](https://github.com/d3p1/docknext/issues/1)] ([09645d5](https://github.com/d3p1/docknext/commit/09645d5bb6036b8f441a432e5c153c881d7c4ada))

## [1.11.1](https://github.com/d3p1/docknext/compare/v1.11.0...v1.11.1) (2026-01-03)


### Bug Fixes

* adjust service image update in bun-configure command [[#1](https://github.com/d3p1/docknext/issues/1)] ([d2d5e77](https://github.com/d3p1/docknext/commit/d2d5e777dccc77f098b34c170fde782d0829cec9))

# [1.11.0](https://github.com/d3p1/docknext/compare/v1.10.2...v1.11.0) (2026-01-03)


### Features

* add bun-configure command [[#1](https://github.com/d3p1/docknext/issues/1)] ([2f8005c](https://github.com/d3p1/docknext/commit/2f8005c406a444fa41651870da282951833ebdab))

## [1.10.2](https://github.com/d3p1/docknext/compare/v1.10.1...v1.10.2) (2025-12-23)


### Bug Fixes

* adjust command argument expansion logic for the install script [[#1](https://github.com/d3p1/docknext/issues/1)] ([fce8aa3](https://github.com/d3p1/docknext/commit/fce8aa3d1a3f77817644d09d150319cca4167448))

## [1.10.1](https://github.com/d3p1/docknext/compare/v1.10.0...v1.10.1) (2025-12-23)


### Bug Fixes

* adjust command that allows the use of the src directory when the app is installed [[#1](https://github.com/d3p1/docknext/issues/1)] ([ce7b872](https://github.com/d3p1/docknext/commit/ce7b872ed47e6fc36757489895b655aab7992979))

# [1.10.0](https://github.com/d3p1/docknext/compare/v1.9.1...v1.10.0) (2025-12-23)


### Features

* add flag to define the use of the src directory when the app is installed [[#1](https://github.com/d3p1/docknext/issues/1)] ([7e0929b](https://github.com/d3p1/docknext/commit/7e0929b132586518d7dedbdde659916d0a8bb34f))

## [1.9.1](https://github.com/d3p1/docknext/compare/v1.9.0...v1.9.1) (2025-11-23)


### Bug Fixes

* define current directory when installing next without template [[#1](https://github.com/d3p1/docknext/issues/1)] ([3c78758](https://github.com/d3p1/docknext/commit/3c78758df92ec6e3ba4ed96ef01038207b56c108))

# [1.9.0](https://github.com/d3p1/docknext/compare/v1.8.1...v1.9.0) (2025-11-23)


### Features

* add next template as config value [[#1](https://github.com/d3p1/docknext/issues/1)] ([6d4e5c0](https://github.com/d3p1/docknext/commit/6d4e5c0f4f64b0c3661b3ba59140f4b3ea9b0d55))

## [1.8.1](https://github.com/d3p1/docknext/compare/v1.8.0...v1.8.1) (2025-11-12)


### Bug Fixes

* adjust standalone production server command [[#1](https://github.com/d3p1/docknext/issues/1)] ([5fc6b06](https://github.com/d3p1/docknext/commit/5fc6b06bfe97ec43e4314bef4b1acd92f43f0606))

# [1.8.0](https://github.com/d3p1/docknext/compare/v1.7.7...v1.8.0) (2025-02-27)


### Features

* add Traefik redirection from http to https [[#1](https://github.com/d3p1/docknext/issues/1)] ([12d8096](https://github.com/d3p1/docknext/commit/12d8096570a3282d6b5cca754f552adf990a9a3c))

## [1.7.7](https://github.com/d3p1/docknext/compare/v1.7.6...v1.7.7) (2025-02-19)


### Bug Fixes

* solve permission issues on production platform configuration script [[#1](https://github.com/d3p1/docknext/issues/1)] ([8b6f761](https://github.com/d3p1/docknext/commit/8b6f761ae07d59014bd4865c047bc9c0c4605f46))

## [1.7.6](https://github.com/d3p1/docknext/compare/v1.7.5...v1.7.6) (2025-02-19)


### Bug Fixes

* adjust copy source code to production container command [[#1](https://github.com/d3p1/docknext/issues/1)] ([7c067bc](https://github.com/d3p1/docknext/commit/7c067bc7fef504cd173f680f102cf9abb4c2a5d0))

## [1.7.5](https://github.com/d3p1/docknext/compare/v1.7.4...v1.7.5) (2025-02-19)


### Bug Fixes

* start production container to be able to copy source code to it [[#1](https://github.com/d3p1/docknext/issues/1)] ([cd5f70d](https://github.com/d3p1/docknext/commit/cd5f70dafc6cf3b406dffb41d54f60702c792fd3))

## [1.7.4](https://github.com/d3p1/docknext/compare/v1.7.3...v1.7.4) (2025-02-19)


### Bug Fixes

* add dependencies and build to platform configuration script for production environments [[#1](https://github.com/d3p1/docknext/issues/1)] ([6550d45](https://github.com/d3p1/docknext/commit/6550d45a4e834b7488c85184f6f9c55c045fa363))
* improve docknext configuration file for production environments [[#1](https://github.com/d3p1/docknext/issues/1)] ([737e120](https://github.com/d3p1/docknext/commit/737e120b66f9530a40da14b702a219409ac5cc59))

## [1.7.3](https://github.com/d3p1/docknext/compare/v1.7.2...v1.7.3) (2025-02-19)


### Bug Fixes

* adjust installer to avoid multiple definitions of command in PATH [[#1](https://github.com/d3p1/docknext/issues/1)] ([06a994e](https://github.com/d3p1/docknext/commit/06a994ebd7a468647fe293d36837ea0e7e9be66c))

## [1.7.2](https://github.com/d3p1/docknext/compare/v1.7.1...v1.7.2) (2025-02-17)


### Bug Fixes

* adjust Docker Compose entrypoint commands [[#1](https://github.com/d3p1/docknext/issues/1)] ([55d60d2](https://github.com/d3p1/docknext/commit/55d60d28305928bde01461bf6b90fd15420adffe))

## [1.7.1](https://github.com/d3p1/docknext/compare/v1.7.0...v1.7.1) (2025-02-17)


### Bug Fixes

* copy service files in init script [[#1](https://github.com/d3p1/docknext/issues/1)] ([c8f068b](https://github.com/d3p1/docknext/commit/c8f068b7660b6af93ef218ec3e885388965ea538))

# [1.7.0](https://github.com/d3p1/docknext/compare/v1.6.0...v1.7.0) (2025-02-16)


### Features

* improve Next.js installation script [[#1](https://github.com/d3p1/docknext/issues/1)] ([11b279a](https://github.com/d3p1/docknext/commit/11b279a4f927179e902f11b683337202ad79da9a))
* improve Next.js setup script [[#1](https://github.com/d3p1/docknext/issues/1)] ([340527b](https://github.com/d3p1/docknext/commit/340527be5cca5beedb2997bc334fb170ffad3c49))

# [1.6.0](https://github.com/d3p1/docknext/compare/v1.5.0...v1.6.0) (2025-02-16)


### Bug Fixes

* adjust Docker Compose configuration for production environments [[#1](https://github.com/d3p1/docknext/issues/1)] ([21dfb7e](https://github.com/d3p1/docknext/commit/21dfb7ec01851130e8866a0766027f9fe4ecde92))
* remove unneeded examples [[#1](https://github.com/d3p1/docknext/issues/1)] ([4b451ec](https://github.com/d3p1/docknext/commit/4b451ec03ce7a490c246b72f7e7eed0966c9bd7c))


### Features

* add Next.js vanilla template [[#1](https://github.com/d3p1/docknext/issues/1)] ([6658ba7](https://github.com/d3p1/docknext/commit/6658ba72102f4814d8803d5c7fc697d1571a49a4))

# [1.5.0](https://github.com/d3p1/docknext/compare/v1.4.0...v1.5.0) (2025-02-15)


### Bug Fixes

* adjust JetBrains IDE configuration deployment script [[#6](https://github.com/d3p1/docknext/issues/6)] ([94be853](https://github.com/d3p1/docknext/commit/94be853367e2211d40e6a5b4308ab79b5a533b12))


### Features

* add JetBrains IDE configuration [[#6](https://github.com/d3p1/docknext/issues/6)] ([dd14905](https://github.com/d3p1/docknext/commit/dd14905e90c31d22cc1f7c023fadacee9942d439))
* improve Docker Composer and Traefik configuration [[#1](https://github.com/d3p1/docknext/issues/1)] ([497c554](https://github.com/d3p1/docknext/commit/497c554a452bbdc90abf575c2a9ee2713af0e840))
* improve environment files [[#1](https://github.com/d3p1/docknext/issues/1)] ([19b7be4](https://github.com/d3p1/docknext/commit/19b7be4a9d8c6585f9ee3b98a949e5ac9ae006c5))

# [1.4.0](https://github.com/d3p1/docknext/compare/v1.3.0...v1.4.0) (2025-02-15)


### Features

* init CLI [[#1](https://github.com/d3p1/docknext/issues/1)] ([eafdd97](https://github.com/d3p1/docknext/commit/eafdd97592ca0deaf560e81f2bedb171f4ff9f14))

# [1.3.0](https://github.com/d3p1/docknext/compare/v1.2.0...v1.3.0) (2025-02-12)


### Features

* improve docker compose file for Traefik example app [[#1](https://github.com/d3p1/docknext/issues/1)] ([0f1cf3a](https://github.com/d3p1/docknext/commit/0f1cf3a20eb2587403d249618296508039d5ab50))

# [1.2.0](https://github.com/d3p1/docknext/compare/v1.1.1...v1.2.0) (2025-02-12)


### Features

* add Traefik example app to test development [[#1](https://github.com/d3p1/docknext/issues/1)] ([a806f26](https://github.com/d3p1/docknext/commit/a806f26ff9b37527efb9c94c95c4aa2457b89a72))

## [1.1.1](https://github.com/d3p1/docknext/compare/v1.1.0...v1.1.1) (2025-02-12)


### Bug Fixes

* avoid using server name in Nginx configuration of example app [[#1](https://github.com/d3p1/docknext/issues/1)] ([fe6ef0f](https://github.com/d3p1/docknext/commit/fe6ef0f06225851ccfc0e33a01496b33299ccabd))

# [1.1.0](https://github.com/d3p1/docknext/compare/v1.0.0...v1.1.0) (2025-02-12)


### Features

* add example app to test development [[#1](https://github.com/d3p1/docknext/issues/1)] ([dc45630](https://github.com/d3p1/docknext/commit/dc45630f75baf8b15ab7d12a8ad0419ccb943568))

# 1.0.0 (2025-02-12)


### Features

* init [[#1](https://github.com/d3p1/docknext/issues/1)] ([926a0fa](https://github.com/d3p1/docknext/commit/926a0fad3f1317f83fe6baa7603fb77935705ede))
