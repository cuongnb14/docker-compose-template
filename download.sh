#! /bin/bash

PROJECT_NAME=$1

echo "Downloading project ${PROJECT_NAME}..."
git clone --depth 1 https://github.com/cuongnb14/docker-compose-template.git /tmp/composes
mv -f /tmp/composes/${PROJECT_NAME} .
rm -rf /tmp/composes