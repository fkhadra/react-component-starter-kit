#!/usr/bin/env bash

currentDir="${PWD##*/}"
path=""

if [ ${currentDir} == "scripts" ]
then
    $path="../"
fi

echo Lib Name:
read LIB_NAME

echo Repo Name:
read REPO_NAME

sed -i s/LIB_NAME/${LIB_NAME}/g ${path}webpack.config.js
sed -i s/LIB_NAME/${LIB_NAME}/g ${path}package.json
sed -i s/REPO_NAME/${REPO_NAME}/g ${path}package.json

rm -rf .git/
`yarn install && yarn upgrade`

exit 0
