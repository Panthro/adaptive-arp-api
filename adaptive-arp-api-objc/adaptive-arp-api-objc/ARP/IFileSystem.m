/*
 * =| ADAPTIVE RUNTIME PLATFORM |=======================================================================================
 *
 * (C) Copyright 2013-2014 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * Original author:
 *
 *     * Carlos Lozano Diez
 *                 <http://github.com/carloslozano>
 *                 <http://twitter.com/adaptivecoder>
 *                 <mailto:carlos@adaptive.me>
 *
 * Contributors:
 *
 *     *
 *
 * =====================================================================================================================
 */

//
//  source: ../../../adaptive-arp-api-java/arp-api-specs/src/main/java/me/adaptive/arp/api/IFileSystem.java
//
//

#include "IFile.h"
#include "IFilePath.h"
#include "IFileResultCallback.h"
#include "IFileSystem.h"

@interface ARPIFileSystem : NSObject
@end

@implementation ARPIFileSystem

+ (J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { "getSeparator", NULL, "C", 0x401, NULL },
    { "getPathWithARPIFilePath:", "getPath", "Ljava.lang.String;", 0x401, NULL },
    { "getPathWithARPIFile:", "getPath", "Ljava.lang.String;", 0x401, NULL },
    { "isSameFileWithARPIFile:withARPIFile:", "isSameFile", "Z", 0x401, NULL },
    { "isSamePathWithARPIFilePath:withARPIFilePath:", "isSamePath", "Z", 0x401, NULL },
    { "createWithNSString:withARPIFileResultCallback:", "create", "V", 0x401, NULL },
    { "createWithNSString:withNSString:withARPIFileResultCallback:", "create", "V", 0x401, NULL },
    { "createWithARPIFilePath:withNSString:withARPIFileResultCallback:", "create", "V", 0x401, NULL },
    { "toPathWithARPIFile:", "toPath", "Lme.adaptive.arp.api.IFilePath;", 0x401, NULL },
    { "getApplicationFolder", NULL, "Lme.adaptive.arp.api.IFilePath;", 0x401, NULL },
    { "getApplicationCacheFolder", NULL, "Lme.adaptive.arp.api.IFilePath;", 0x401, NULL },
    { "getApplicationDocumentsFolder", NULL, "Lme.adaptive.arp.api.IFilePath;", 0x401, NULL },
  };
  static J2ObjcClassInfo _ARPIFileSystem = { "IFileSystem", "me.adaptive.arp.api", NULL, 0x201, 12, methods, 0, NULL, 0, NULL};
  return &_ARPIFileSystem;
}

@end