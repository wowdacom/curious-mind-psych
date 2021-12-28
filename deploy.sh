#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

git branch -M main
# git remote add origin https://github.com/wowdacom/none-chinese-a-year.git

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:wowdacom/none-chinese-a-year.git main:gh-pages

cd -
