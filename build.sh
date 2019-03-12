#!/usr/bin/env bash
srcdir=$PWD/src
workspace=$PWD
androidHome=$PWD/platforms/android

cd $srcdir
npm i
npm run build
cp platforms/android/* dist/
rm -rf $workspace/www/dist
cp -r dist $workspace/www/dist
cd $workspace
npm i
echo 'key.store=qialanshan-todo-release.keystore' >> $androidHome/release-signing.properties
echo "key.alias=${APP_ALIAS}" >> $androidHome/release-signing.properties
echo "key.store.password=${APP_PASSWORD}" >> $androidHome/release-signing.properties
echo "key.alias.password=${APP_PASSWORD}" >> $androidHome/release-signing.properties

npx cordova build -release