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

    * @version v2.0.3

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

///<reference path="APIRequest.ts"/>
///<reference path="BaseSystemBridge.ts"/>
///<reference path="CommonUtil.ts"/>
///<reference path="IAdaptiveRPGroup.ts"/>
///<reference path="IBaseSystem.ts"/>
///<reference path="IOS.ts"/>
///<reference path="OSInfo.ts"/>
module Adaptive {

     /**
        Interface for Managing the OS operations

        @author Carlos Lozano Diez
        @since ARP1.0
     */
     export class OSBridge extends BaseSystemBridge implements IOS {

          /**
             Default constructor.
          */
          constructor() {
               super();
          }

          /**
             Returns the OSInfo for the current operating system.

             @return OSInfo with name, version and vendor of the OS.
             @since ARP1.0
          */
          getOSInfo() : OSInfo {
               return null;
          }
     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
