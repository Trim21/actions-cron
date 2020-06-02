#!/usr/bin/env bash

echo "::set-output name=renovate::$(npm info renovate --json | jq -r .version)"
echo "::set-env name=PY::$(python -VV | md5sum | cut -d' ' -f1)"

echo "::add-path::$HOME/.local/bin"
