#!/usr/bin/env bash

# Kernel name
KERNEL_NAME="QuartiX-v2"

# GKI Version
GKI_VERSION="android12-5.10"

# Build variables
export TZ="Asia/Makassar"
export KBUILD_BUILD_USER="eraselk"
export KBUILD_BUILD_HOST="$KERNEL_NAME"
export KBUILD_BUILD_TIMESTAMP=$(date)

# AnyKernel variables
ANYKERNEL_REPO="https://github.com/hazepynut/anykernel"
ANYKERNEL_BRANCH="gki"

# Kernel
KERNEL_REPO="https://github.com/yahdikush/android_kernel_common-5.10"
KERNEL_BRANCH="custom-5.10"
KERNEL_DEFCONFIG="gki_defconfig"
DEFCONFIG_FILE="$workdir/common/arch/arm64/configs/$KERNEL_DEFCONFIG"

# Defconfigs would be merged in the compiling processes
DEFCONFIGS_EXAMPLE="
vendor/xiaomi.config
vendor/gold.config
"
DEFCONFIGS="kush.config
" # Leave this empty if you don't need to merge any configs

# Releases repository
GKI_RELEASES_REPO="https://github.com/yahdikush/gki-builder"

# AOSP Clang
USE_AOSP_CLANG="false"
AOSP_CLANG_VERSION="r547379"

# Custom clang
USE_CUSTOM_CLANG="true"
CUSTOM_CLANG_SOURCE="https://gitlab.com/rvproject27/RvClang"
CUSTOM_CLANG_BRANCH="release/19.x"

# Zip name
BUILD_DATE=$(date -d "$KBUILD_BUILD_TIMESTAMP" +"%y%m%d%H%M")
ZIP_NAME="$KERNEL_NAME-KVER-VARIANT-$BUILD_DATE.zip"
# Note: KVER and VARIANT are placeholder and they will be changed in the build.sh script.
