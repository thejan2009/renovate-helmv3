#!/usr/bin/env sh

set -e

# This script is ran by renovate and it updates chart archive references

CHART="$1"
OLD_VERSION="$2"
NEW_VERSION="$3"

sed -i.bak \
    -- "s!/${CHART}-${OLD_VERSION}.tgz!/${CHART}-${NEW_VERSION}.tgz!g" resources/*
find resources/ -type f -name '*.bak' -exec rm {} \;
