#!/bin/sh

echo "Copy docker-compose.yml"
cp ./.docker-assets/docker-compose.yml docker-compose.yml

echo "Copy formatters files"
cp ./.docker-assets/formatters/. . -r

echo "Prepare pre-commit"
cp pre-commit .git/hooks/pre-commit