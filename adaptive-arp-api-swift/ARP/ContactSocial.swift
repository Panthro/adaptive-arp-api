/*
* =| ADAPTIVE RUNTIME PLATFORM |=======================================================================================
*  Auto-generated from: me.adaptive.arp.api.ContactSocial -> ContactSocial.swift
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

import Foundation

public class ContactSocial : NSObject  {

     /**
      * Field Declarations
      */
     var profileUrl : String
     var socialNetwork : SocialNetwork?
     public override var description : String {
          return "ContactSocial{profileUrl=\(profileUrl), socialNetwork=\(socialNetwork!.hashValue.description)}"
     }


     /**
      * Enumeration Declarations
      */
     public enum SocialNetwork {
          /// Enum Values
          case Twitter, Facebook, GooglePlus, LinkedIn, Flickr, Unknown

          /// toString
          public func toString() -> String {
               switch self {
                    case .Twitter: return "Twitter"
                    case .Facebook: return "Facebook"
                    case .GooglePlus: return "GooglePlus"
                    case .LinkedIn: return "LinkedIn"
                    case .Flickr: return "Flickr"
                    case .Unknown: return "Unknown"
               }
          }

          /// toEnum
          public static func toEnum(string:String?) -> SocialNetwork {
               if let validString = string {
                    switch validString {
                         case "Twitter": return .Twitter
                         case "Facebook": return .Facebook
                         case "GooglePlus": return .GooglePlus
                         case "LinkedIn": return .LinkedIn
                         case "Flickr": return .Flickr
                         case "Unknown": return .Unknown
                         default: return .Unknown
                    }
               } else {
                    return .Unknown
               }
          }

     }

     /**
      * Initialization
      */
     public convenience init(socialNetwork : SocialNetwork, profileUrl : String) {
          self.init()
          self.socialNetwork = socialNetwork
          self.profileUrl = profileUrl
     }

     public override init() {
          self.socialNetwork = nil
          self.profileUrl = ""
     }


     /**
      * Function Declarations
      */
     public func getProfileUrl() -> String? {
          return self.profileUrl
     }

     public func getSocialNetwork() -> SocialNetwork {
          return self.socialNetwork!
     }

     public func setProfileUrl(profileUrl : String) {
          self.profileUrl = profileUrl
     }

     public func setSocialNetwork(socialNetwork : SocialNetwork) {
          self.socialNetwork = socialNetwork
     }


}
