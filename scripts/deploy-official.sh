#!/usr/bin/env bash
set -euo pipefail

cd /opt/openclaw-lab

git fetch origin main
git reset --hard origin/main

docker compose \
  -p official-openclaw \
  -f official/docker-compose.yml \
  pull

docker compose \
  -p official-openclaw \
  -f official/docker-compose.yml \
  up -d

docker compose \
  -p official-openclaw \
  -f official/docker-compose.yml \
  ps