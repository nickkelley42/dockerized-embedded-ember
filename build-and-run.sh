#!/bin/bash

set -e
docker build -t dockerized-embedded-ember .

echo 'Starting image; navigate to http://localhost:80/ to see it in action.'
docker run --rm -p 80:80 dockerized-embedded-ember
