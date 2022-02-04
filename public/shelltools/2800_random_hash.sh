#!/usr/bin/env bash

function random_hash() {
  head -n1024 /dev/urandom | sha256sum | cut -d' ' -f1
}

