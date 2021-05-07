#!/bin/sh
set -o errexit

# Set composer credentials based on GitHub actions token
test -z "${COMPOSER_AUTH}" && \
test -n "${GITHUB_TOKEN}" && \
export COMPOSER_AUTH='{"github-oauth":{"github.com":"'${GITHUB_TOKEN}'"}}'

exec /usr/bin/composer "${@}"
