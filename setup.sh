#!/usr/bin/env bash

# configure bundle
bundle config set path "${APPLICATION_ROOT}/vendor/bundle"
bundle install --path "${APPLICATION_ROOT}/vendor/bundle"
