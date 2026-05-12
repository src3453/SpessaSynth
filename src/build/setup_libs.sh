#!/bin/bash

set -euo pipefail
cd "$(dirname "$0")" || exit
cd ../..

mkdir -p libs

clone_if_missing() {
    local repo_name="$1"
    local target_dir="libs/$2"

    if [ -d "$target_dir/.git" ]; then
        return
    fi

    git clone "https://github.com/spessasus/$repo_name" "$target_dir"
}

clone_if_missing "spessasynth_core" "spessasynth_core"
clone_if_missing "spessasynth_lib" "spessasynth_lib"