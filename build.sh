#!/bin/sh
# src/app.html（Artifactにそのまま公開する本体）から、ダブルクリックで開ける index.html を作る
set -e
cd "$(dirname "$0")"
{
  printf '<!DOCTYPE html>\n<html lang="ja">\n<head>\n<meta charset="UTF-8">\n'
  printf '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n'
  cat src/app.html
  printf '\n</html>\n'
} > index.html
echo "built index.html"
