#!/bin/bash
#
# Anomaly Innovations opencode CLI runner wrapper
#

#
# Docker container Anomaly Innovations opencode CLI wrapper
#
opencode() {
  # extract Docker GID from the system
  export DOCKER_GID=$(getent group docker | cut -d: -f3)

  docker run -it --rm \
    --group-add "${DOCKER_GID}" \
    --env-file "${HOME}/.opencode/.env" \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "${HOME}/.opencode:/home/${USER}/.opencode" \
    -v "${HOME}/workspace:/workspace" \
    -v "${HOME}/.docker:/home/${USER}/.docker:ro" \
    -v "${HOME}/.docker/mcp:/home/${USER}/.docker/mcp" \
    -w "/workspace" \
    ghcr.io/stefanbosak/opencode-cli:initial \
    opencode "$@"
}

# run
opencode "${@}"
