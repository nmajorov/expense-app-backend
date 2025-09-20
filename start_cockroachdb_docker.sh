#!/usr/bin/env zsh


docker run -it -p "5432:26257" -p "8080:8080" --name nice_brown  \
          \
 docker.io/cockroachdb/cockroach:v22.2.1 \
  start-single-node --insecure --store=type=mem,size=1G
