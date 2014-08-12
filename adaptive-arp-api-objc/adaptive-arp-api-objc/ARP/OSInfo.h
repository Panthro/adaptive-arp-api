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
//  source: tmp/adaptive-arp-api-java/ARP/src/me/adaptive/arp/api/OSInfo.java
//
//

#ifndef _ARPOSInfo_H_
#define _ARPOSInfo_H_

#import "JreEmulation.h"
#include "java/io/Serializable.h"

@interface ARPOSInfo : NSObject < JavaIoSerializable > {
 @public
  NSString *name_;
  NSString *version__;
  NSString *vendor_;
}

- (id)initWithNSString:(NSString *)name
          withNSString:(NSString *)version_
          withNSString:(NSString *)vendor;

- (NSString *)getName;

- (NSString *)getVersion;

- (NSString *)getVendor;

- (void)copyAllFieldsTo:(ARPOSInfo *)other;

@end

__attribute__((always_inline)) inline void ARPOSInfo_init() {}

J2OBJC_FIELD_SETTER(ARPOSInfo, name_, NSString *)
J2OBJC_FIELD_SETTER(ARPOSInfo, version__, NSString *)
J2OBJC_FIELD_SETTER(ARPOSInfo, vendor_, NSString *)

typedef ARPOSInfo MeAdaptiveArpApiOSInfo;

#endif // _ARPOSInfo_H_