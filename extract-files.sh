#!/bin/bash
#
# Copyright (C) 2020 The MoKee Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=casuarina
export DEVICE_COMMON=sdm632-common
export VENDOR=vsmart

# Load extract_utils and do some sanity checks
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi

LINEAGE_ROOT="${MY_DIR}/../../.."

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"

BLOB_ROOT="${LINEAGE_ROOT}/vendor/${VENDOR}/${DEVICE}/proprietary"
