#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")" || exit

cd ../..

echo "⚠️  Building release with local GitHub clones from libs/"
src/build/setup_libs.sh
npm install
echo "✅  Success! Building..."
npm run build