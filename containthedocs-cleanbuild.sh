#!/usr/bin/env bash

set -x

COMMAND="make -C docs clean html"

. ./containthedocs-image

exec docker run --rm -it \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  ${DOC_IMG} ${COMMAND}
