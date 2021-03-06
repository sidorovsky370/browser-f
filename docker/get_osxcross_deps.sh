#!/usr/bin/env bash

set -e -o pipefail

if [[ -z $TOOLCHAIN_DATE ]]; then
    CQZ_VERSION="$depsVersion"
fi

if [[ -z $OSX_SDK_PATH ]]; then
   OSX_SDK_PATH="ftp://cliqznas/cliqz-browser-build-artifacts/MacOSX10.11.sdk.tar.bz2"
fi

# get toolchain bundles
for bundle in "nasm.tar.bz2" "cbindgen.tar.xz" "cctools.tar.xz" "clang.tar.xz" \
              "dmg.tar.xz" "hfsplus-tools.tar.xz" "llvm-dsymutil.tar.xz" \
              "node.tar.xz" "rustc.tar.xz" "rust-size.tar.xz" "lucetc.tar.xz" \
              "wasi-sysroot.tar.xz"; do
    curl "https://repository.cliqz.com/dist/artifacts/mac/release/${CQZ_VERSION}/${bundle}" > ${bundle}
done
curl "${OSX_SDK_PATH}" > MacOSX10.11.sdk.tar.bz2

