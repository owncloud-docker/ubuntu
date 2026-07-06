# agents.md — ubuntu

## Repository Overview

This repository builds the official **ownCloud Ubuntu** Docker image
(`owncloud/ubuntu` on Docker Hub) on top of the
[official Ubuntu](https://hub.docker.com/_/ubuntu) image. It is the base of the
ownCloud Docker image stack — [`owncloud/php`](https://github.com/owncloud-docker/php)
builds `FROM` it. It **also hosts the shared reusable GitHub Actions workflows**
that every other `owncloud-docker` image repository calls. Images are
multi-architecture and built via GitHub Actions.

- **Classification:** Docker image build (base layer) + shared CI workflows
- **Activity Status:** Active
- **License:** MIT
- **Language:** Dockerfile, Shell, GitHub Actions YAML

## Architecture & Key Paths

- `v22.04/`, `v24.04/` — one directory per Ubuntu release
  - `<version>/Dockerfile.multiarch` — image definition (`FROM ubuntu:<version>`)
  - `<version>/overlay/` — files copied into the image root (`ADD overlay /`)
- `.github/workflows/` — **the shared reusable workflows for the whole org:**
  - `docker-build.yml` — cross-compiled multi-arch build, smoke test, Trivy scan,
    publish (called by `base`, `php`, `server`)
  - `docker-build-native.yml` — native per-arch build variant (called by `ocis`)
  - `docker-hub-desc.yml` — sync README to the Docker Hub image description
    (runs `markdown-link-check` on `README.md`)
  - `lint-editorconfig.yml` — editorconfig-checker lint
  - `lint-pr-title.yml` — Conventional-Commit PR-title enforcement
  - `main.yml` — this repo's own CI, which also self-tests the reusable workflows
- `.github/dependabot.yml` — weekly GitHub Actions dependency updates
- `.github/settings.yml` — repository settings management
- `.renovaterc.json` — Renovate preset for Docker digest updates (Ubuntu major/
  minor bumps disabled)
- `.editorconfig` — formatting rules (2-space indent, LF, trailing newline)
- `.trivyignore` — accepted-CVE exclusions for the Trivy scan
- `CHANGELOG.md` — flat, date-based changelog at repo root
- `LICENSE` — MIT

## Build & CI

There is no local application build. `main.yml` builds the `owncloud/ubuntu`
image via its own reusable workflows and additionally self-tests the native
multi-arch workflow (`build-native`, which never publishes):

- Matrix builds `22.04` and `24.04`, each via `v<version>/Dockerfile.multiarch`.
- Smoke test asserts `/etc/os-release`'s `VERSION_ID` matches the tag.
- Trivy vulnerability scan (`.trivyignore`).
- On `master`: push to Docker Hub and sync the README as the image description.

**All GitHub Actions inside the reusable workflows are pinned to full commit
SHAs** (e.g. `actions/checkout@<SHA> # v7.0.0`). When updating an action, keep
the `# vX.Y.Z` comment in sync with the pinned SHA.

To build locally:

```bash
docker build -f v24.04/Dockerfile.multiarch v24.04
```

## Development Conventions

- Date-based `CHANGELOG.md` at repo root — **not** a `changelog/unreleased/`
  directory. Prepend a new `## YYYY-MM-DD` section for notable changes.
- Conventional-Commit PR titles, enforced by `lint-pr-title.yml`.
- `.editorconfig` governs formatting.
- GitHub Actions are pinned to full commit SHAs.

## OSPO Policy Constraints

### GitHub Actions
- **Only** use actions owned by `owncloud`, created by GitHub (`actions/*`),
  verified on the GitHub Marketplace, or verified by the ownCloud Maintainers.
- Pin all actions to their full commit SHA (not tags): `uses: actions/checkout@<SHA> # vX.Y.Z`.
- Never introduce actions from unverified third parties.
- Because this repo hosts the shared reusable workflows, changes here affect
  every downstream image repository — review action bumps carefully.

### Dependency Management
- Dependabot is configured for GitHub Actions updates; Renovate handles Docker
  base-image digest updates.
- Review and merge dependency PRs as part of regular maintenance.

### Git Workflow
- **Rebase policy**: Always rebase; never create merge commits.
- **Signed commits**: All commits **must** be PGP/GPG signed (`git commit -S`).
- **DCO sign-off**: Every commit needs a `Signed-off-by` line (`git commit -s`).
- **Conventional Commits & Squash Merge**: PR titles must follow
  [Conventional Commits](https://www.conventionalcommits.org/); the PR title
  becomes the squash-merge commit message and is enforced by CI.

## Context for AI Agents

- This is a small Docker-image packaging repo that **also owns the org's shared
  CI workflows** — treat `.github/workflows/*.yml` as a public interface.
- The two `v*/` directories are near-identical; changes usually apply to both.
- The README is published verbatim as the Docker Hub image description — keep it
  accurate and self-contained.
- License is **MIT** (permissive, already compatible with Apache-2.0); no
  copyleft dependency audit is required for relicensing.
