#!/usr/bin/env bash

echo "🤖 🤖 🤖 🤖 🤖 ENTRYPOINT: RAILS 🤖 🤖 🤖 🤖 🤖"


rm -Rf /app/tmp/
echo -n "" > /app/log/development.log
echo -n "" > /app/log/test.log

bundle install
yarn install

./bin/webpack --watch --colors --progress  &




exec "$@" # Finally call command issued to the docker service (if any)
