#!/usr/bin/env bash

set -e

DESTINATION=dist/firefox
mkdir -p                            $DESTINATION
rm -rf                              $DESTINATION/*
./tools/copy-shared.sh              $DESTINATION
./tools/copy-extension.sh           $DESTINATION
cp platform/firefox/manifest.json   $DESTINATION/
