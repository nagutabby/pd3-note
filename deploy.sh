#!/bin/bash

echo Starting deployment...

git push

ssh sakamotolab 'set -eu && cd ~/pd3-note && git fetch origin main && git reset --hard origin/main && asciidoctor index.adoc'

if test $? -ne 0; then
  echo '❌ Failed to deploy.'
  exit 1
else
  echo '✅ Deployed successfully.'
fi
