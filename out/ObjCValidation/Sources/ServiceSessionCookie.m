/**
--| ADAPTIVE RUNTIME PLATFORM |----------------------------------------------------------------------------------------

(C) Copyright 2013-2015 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the
License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 . Unless required by appli-
-cable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS,  WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the  License  for the specific language governing
permissions and limitations under the License.

Original author:

    * Carlos Lozano Diez
            <http://github.com/carloslozano>
            <http://twitter.com/adaptivecoder>
            <mailto:carlos@adaptive.me>

Contributors:

    * Ferran Vila Conesa
             <http://github.com/fnva>
             <http://twitter.com/ferran_vila>
             <mailto:ferran.vila.conesa@gmail.com>

    * See source code files for contributors.

Release:

    * @version v2.1.5

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

#import <ServiceSessionCookie.h>

/**

@author Aryslan
@since v2.0
@version 1.0
*/
@implementation ServiceSessionCookie


     /**
        Default constructor.

        @since v2.0
     */
     - (id) init {
          self = [self init];
          return self;
     }

     /**
        Constructor used by the implementation

        @param cookieName  Name of the cookie
        @param cookieValue Value of the cookie
        @since v2.0
     */
     - (id) initWithCookieNameCookieValue:(NSString*)cookieName cookieValue:(NSString*)cookieValue {
          self = [self init];
          if (self) {
               [self setCookieName:cookieName];
               [self setCookieValue:cookieValue];
          }
          return self;
     }

     /**
        Contructor with fields

        @param cookieName  Name of the cookie
        @param cookieValue Value of the cookie
        @param domain      Domain of the cookie
        @param path        Path of the cookie
        @param scheme      Scheme of the cookie
        @param secure      Privacy of the cookie
        @param expiry      Expiration date of the cookie
        @param creation    Creation date of the cookie
        @since v2.0
     */
     - (id) initWithCookieNameCookieValueDomainPathSchemeSecureExpiryCreation:(NSString*)cookieName cookieValue:(NSString*)cookieValue domain:(NSString*)domain path:(NSString*)path scheme:(NSString*)scheme secure:(bool*)secure expiry:(long*)expiry creation:(long*)creation {
          self = [self init];
          if (self) {
               [self setCookieName:cookieName];
               [self setCookieValue:cookieValue];
               [self setDomain:domain];
               [self setPath:path];
               [self setScheme:scheme];
               [self setSecure:secure];
               [self setExpiry:expiry];
               [self setCreation:creation];
          }
          return self;
     }



@end

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
