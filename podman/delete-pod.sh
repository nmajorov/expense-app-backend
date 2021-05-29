#!/usr/bin/env bash
echo "delete pod sso"

podman pod rm sso --force 2>/dev/null

echo "check if container ps exists"

echo "podman ps -a"
podman ps -a

echo
echo "podman pod ls"
podman pod ls
