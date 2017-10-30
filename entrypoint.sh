#!/usr/bin/env bash

echo "prep server directory"
mkdir /server
cp ./package.json /server
cp ./package-lock.json /server
cp -rv ./src/server/* /server

cd /server

echo cwd

echo "install dependencies"
npm install

echo "start the server"
node ./index.js