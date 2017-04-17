#!/usr/bin/env bash
set -e
set -x

cd public

touch .static
echo "/ Home" >> CHECKS

git init
git add .
git commit --allow-empty -m "$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
git push --set-upstream dokku@dokku-1.despairblue.xyz:wiesenpension-cottbus master
