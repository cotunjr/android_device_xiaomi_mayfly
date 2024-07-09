/*
 * Copyright (C) 2021 The LineageOS Project
 *           (C) 2024 Paranoid Android
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t cupid = {
    .hwc = "CN",
    .brand = "Xiaomi",
    .device = "mayfly",
    .model = "2206123SC",
    .name = "mayfly",
    .marketname = "Xiaomi 12S",
};

static const std::vector<variant_info_t> variants = {
    mayfly,
};

void vendor_load_properties() {
    search_set_variant_props(variants);
}
