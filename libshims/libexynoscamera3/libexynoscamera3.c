/*
 * Copyright (C) 2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "libexynoscamera3_shim"
#define LOG_NDEBUG 0

#include <cutils/log.h>

int _ZN7android17FoooooCameraFenceD1Ev()
{
    ALOGW("SHIM: hijacking %s!", __func__);

    /*
     * This function triggers fdsan in Android 10 due to a double fd
     * close caused probably by FORCE_CLOSE_ACQUIRE_FD
     */

    return 0;
}

int _ZN7android17FoooooCameraFenceD2Ev()
{
    ALOGW("SHIM: hijacking %s!", __func__);

    /*
     * This function triggers fdsan in Android 10 due to a double fd
     * close caused probably by FORCE_CLOSE_ACQUIRE_FD
     */

    return 0;
}
