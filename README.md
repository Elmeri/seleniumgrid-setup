# seleniumgrid-setup

Simple docker selenium grid setup based on [docker-selenium](https://github.com/SeleniumHQ/docker-selenium). Just run setup.sh to and change your (robot) tests to have `remote_url=http://0.0.0.0:4444/wd/hub` in `Open browser` keyword.

## Prequisites

- Docker installed
- jq installed

## Setup

run setup.sh

## Teardown

run teardown-macos.sh


## VNC

On macOs vnc to view the tests can be opened with

`open vnc://127.0.0.1:5900` (chrome)

`open vnc://127.0.0.1:5901` (firefox)

`open vnc://127.0.0.1:5902`
(opera)