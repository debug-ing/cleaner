#!/bin/bash

# brew
brew cleanup

#nix 
nix-collect-garbage -d
nix-store --gc

#docker
docker image prune -a
docker builder prune
 docker volume prune