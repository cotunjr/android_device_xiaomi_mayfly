#!/bin/bash
#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=mayfly
export DEVICE_COMMON=sm8450-common
export VENDOR=xiaomi
export VENDOR_COMMON=${VENDOR}

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
