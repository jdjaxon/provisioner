#!/usr/bin/env bash

docker build -t test-env . && docker run -it --rm test-env bash
