#!/usr/bin/env bash
srcdir=$PWD/src
workspace=$PWD
androidHome=$PWD/plantforms/android

cd $srcdir
npm i
npm run build
cp plantform/android/* dist/
rm -rf $workspace/www/dist
cp -r dist $workspace/www/dist
cd $workspace
touch $androidHome/release-signing.properties
echo 'key.store=qialanshan-todo-release.keystore' >> $androidHome/release-signing.properties
echo "key.alias=${APP_ALIAS}" >> $androidHome/release-signing.properties
echo "key.store.password=${APP_PASSWORD}" >> $androidHome/release-signing.properties
echo "key.alias.password=${APP_PASSWORD}" >> $androidHome/release-signing.properties

cordova build -release