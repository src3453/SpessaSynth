#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")" || exit
cd ../..
echo "🪲  Enabling debug mode, using local GitHub clones from libs/"
src/build/setup_libs.sh
npm install

echo "✅  Installed dependencies! Building..."
npm run build:fast