# ownCloud: Ubuntu

[![Build Status](https://drone.owncloud.com/api/badges/owncloud-docker/ubuntu/status.svg)](https://drone.owncloud.com/owncloud-docker/ubuntu)
[![Docker Hub](https://img.shields.io/docker/v/owncloud/ubuntu?logo=docker&label=dockerhub&sort=semver&logoColor=white)](https://hub.docker.com/r/owncloud/ubuntu)
[![GitHub contributors](https://img.shields.io/github/contributors/owncloud-docker/ubuntu)](https://github.com/owncloud-docker/ubuntu/graphs/contributors)
[![Source: GitHub](https://img.shields.io/badge/source-github-blue.svg?logo=github&logoColor=white)](https://github.com/owncloud-docker/ubuntu)
[![License: MIT](https://img.shields.io/github/license/owncloud-docker/ubuntu)](https://github.com/owncloud-docker/ubuntu/blob/master/LICENSE)
[![ownCloud OSPO](https://img.shields.io/badge/OSPO-ownCloud-blue)](https://kiteworks.com/opensource)

ownCloud Docker Ubuntu base image based on the [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/) image.

## Quick reference

- **Where to file issues:**\
  [owncloud-docker/ubuntu](https://github.com/owncloud-docker/ubuntu/issues)

- **Supported architectures:**\
  `amd64`, `arm64v8`

- **Build & maintenance:**\
  [How these images are built, scanned, updated and published](https://github.com/owncloud-docker/.github/blob/master/docs/IMAGE-LIFECYCLE.md)

## Docker Tags and respective Dockerfile links

- [`24.04`](https://github.com/owncloud-docker/ubuntu/blob/master/v24.04/Dockerfile.multiarch) available as `owncloud/ubuntu:24.04`
- [`22.04`](https://github.com/owncloud-docker/ubuntu/blob/master/v22.04/Dockerfile.multiarch) available as `owncloud/ubuntu:22.04`

## Default volumes

None

## Exposed ports

None

## Environment variables

None

## Community & Support

- [ownCloud Website](https://owncloud.com)
- [Community Discussions](https://github.com/orgs/owncloud/discussions)
- [Matrix Chat](https://app.element.io/#/room/#owncloud:matrix.org)
- [Documentation](https://doc.owncloud.com)
- [Enterprise Support](https://owncloud.com/contact-us/)
- [OSPO Home](https://kiteworks.com/opensource)

See [SUPPORT.md](SUPPORT.md) for the full list of support channels.

## Contributing

We welcome contributions! Please read the [Contributing Guidelines](CONTRIBUTING.md)
and our [Code of Conduct](CODE_OF_CONDUCT.md) before getting started.

- **Rebase Early, Rebase Often!** We use a rebase workflow — rebase on the target
  branch before submitting a PR.
- **Signed commits**: All commits **must** be PGP/GPG signed and carry a DCO
  `Signed-off-by` line (`git commit -S -s`).
- **Conventional Commits**: PR titles must follow the
  [Conventional Commits](https://www.conventionalcommits.org/) format — enforced
  by CI.
- **GitHub Actions Policy**: Workflows may only use actions owned by `owncloud`,
  created by GitHub (`actions/*`), or verified in the GitHub Marketplace, pinned
  to a full commit SHA.

## Security

**Do not open a public GitHub issue for security vulnerabilities.**

Report vulnerabilities at **<https://security.owncloud.com>** — see [SECURITY.md](SECURITY.md).

Bug bounty: [YesWeHack ownCloud Program](https://yeswehack.com/programs/owncloud-bug-bounty-program)

## About the ownCloud OSPO

The [Kiteworks Open Source Program Office](https://kiteworks.com/opensource), operating under
the [ownCloud](https://owncloud.com) brand, launched on May 5, 2026, to steward the open source
ecosystem around ownCloud's products. The OSPO ensures transparent governance, license compliance,
community health, and sustainable collaboration between the open source community and
[Kiteworks](https://www.kiteworks.com), which acquired ownCloud in 2023.

- **OSPO Home**: <https://kiteworks.com/opensource>
- **GitHub**: <https://github.com/owncloud>
- **ownCloud**: <https://owncloud.com>

For questions about the OSPO or licensing, contact ospo@kiteworks.com.

This repository is licensed under the permissive **MIT License**, which is already
compatible with the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
that the OSPO is adopting across the ecosystem. No relicensing or copyleft
dependency audit is required.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/owncloud-docker/ubuntu/blob/master/LICENSE) file for details.

## Copyright

```Text
Copyright (c) 2022 ownCloud GmbH
```
