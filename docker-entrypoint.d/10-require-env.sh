#!/bin/sh
# Fail fast with a readable error if required runtime env vars are missing.
# Without this, envsubst would leave the literal "${BACKEND_API_URL}" in the
# nginx config and nginx would crash with a confusing
#   [emerg] unknown "backend_api_url" variable
# error on startup.
set -e

: "${BACKEND_API_URL:?BACKEND_API_URL must be set (e.g. https://api.buildingpark.co.il)}"
: "${PORT:?PORT must be set (Railway provides this automatically)}"
