#!/usr/bin/bash

pwd
npm run build
mkdir -p npmpkg
rm -rf npmpkg/*
mv dist npmpkg
cp package.json package.save
npx clean-pkg-json
mv package.json npmpkg
mv package.save package.json
cd npmpkg
npm publish --access public
