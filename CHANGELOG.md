# Changelog

## 2020-05-25

* Added
  * Add Ubuntu 20.04 for owncloud.complete-10.5.0beta1

## 2019-10-17

* Added
  * Add shell script for a retry command

## 2019-10-14

* Fixed
  * Downloaded tools got to be executable
* Changed
  * Replace wait-for-it with a static binary

## 2019-10-11

* Changed
  * Set aliases for release names

## 2019-10-08

* Changed
  * Switch to single branch development
  * Use drone starlark instead of yaml
  * Prepare multi architecture support

## 2019-04-17

* Added
  * Install gnupg for apt-key add usage

## 2018-10-08

* Changed
  * Download additional tools within drone
* Removed
  * Dropped shell script for tool download

## 2018-09-25

* Added
  * Install sshpass for SSH agent
* Changed
  * Upgrade to 18.04 LTS as base image
  * Upgrade dockerize from v0.4.0 to v0.6.1
  * Trigger `owncloud-docker/php` downstream
  * Trigger `owncloud-ci/client` downstream
  * Limit downstream to `master` branch
* Removed
  * Drop `owncloud-docker/base` downstream
