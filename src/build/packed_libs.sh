#!/bin/bash

set -euo pipefail
cd "$(dirname "$0")" || exit
cd ../..
echo "🪲  Building local clones from libs/ before the web app"
echo "This expects libs/spessasynth_core and libs/spessasynth_lib to exist inside SpessaSynth."

echo "Building core..."

cd libs/spessasynth_core
npm run build:fast


echo "Building lib..."

cd ../spessasynth_lib
npm run debug

echo "Web App"

cd ../..
npm run build:fast

