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

    * See source code files for contributors.

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

///<reference path="IAdaptiveRPGroup.ts"/>
///<reference path="IBaseCallback.ts"/>
///<reference path="ISecurityResultCallbackError.ts"/>
///<reference path="ISecurityResultCallbackWarning.ts"/>
///<reference path="SecureKeyPair.ts"/>

module Adaptive {

     /**
        Interface for Managing the Security result callback

        @author Aryslan
        @since ARP1.0
        @version 1.0
     */
     export interface ISecurityResultCallback extends IBaseCallback {
          /**
             No data received - error condition, not authorized .
             @param error Error values
             @since ARP1.0
          */
          onError(error:ISecurityResultCallbackError);
          /**
             Correct data received.
             @param keyValues key and values
             @since ARP1.0
          */
          onResult(keyValues:Array<SecureKeyPair>);
          /**
             Data received with warning - ie Found entries with existing key and values have been overriden
             @param keyValues key and values
             @param warning   Warning values
             @since ARP1.0
          */
          onWarning(keyValues:Array<SecureKeyPair>, warning:ISecurityResultCallbackWarning);
     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/