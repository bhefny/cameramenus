#!/usr/bin/env bash

echo "🤖 🤖 🤖 🤖 🤖 ENTRYPOINT: RAILS 🤖 🤖 🤖 🤖 🤖"



rm -Rf /app/tmp/
echo -n "" > /app/log/development.log
echo -n "" > /app/log/test.log

bundle install
yarn install

echo "PATH=$PATH:/app/node_modules/.bin" > /root/.bashrc
echo '{ "allow_root": true }' > /root/.bowerrc

./bin/webpack --watch --colors --progress  &




exec "$@" # Finally call command issued to the docker service (if any)
