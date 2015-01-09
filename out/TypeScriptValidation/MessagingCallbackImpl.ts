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

///<reference path="BaseCallbackImpl.ts"/>
///<reference path="CommonUtil.ts"/>
///<reference path="IMessagingCallback.ts"/>
///<reference path="IMessagingCallbackError.ts"/>
///<reference path="IMessagingCallbackWarning.ts"/>

module Adaptive {

     /**
        Interface for Managing the Messaging responses
        Auto-generated implementation of IMessagingCallback specification.
     */
     export class MessagingCallbackImpl extends BaseCallbackImpl implements IMessagingCallback {

          onErrorFunction : (error : IMessagingCallbackError) => Function;
          onResultFunction : (success : boolean) => Function;
          onWarningFunction : (success : boolean, warning : IMessagingCallbackWarning) => Function;

          /**
             Constructor with anonymous handler functions for callback.

             @param onErrorFunction Function receiving parameters of type: IMessagingCallbackError
             @param onResultFunction Function receiving parameters of type: boolean
             @param onWarningFunction Function receiving parameters of type: boolean, IMessagingCallbackWarning
          */
          constructor(onErrorFunction : (error : IMessagingCallbackError) => Function, onResultFunction : (success : boolean) => Function, onWarningFunction : (success : boolean, warning : IMessagingCallbackWarning) => Function) {
               super(++registeredCounter);
               if (onErrorFunction == null) {
                    console.error("ERROR: MessagingCallbackImpl onErrorFunction is not defined.");
               } else {
                    this.onErrorFunction = onErrorFunction;
               }
               if (onResultFunction == null) {
                    console.error("ERROR: MessagingCallbackImpl onResultFunction is not defined.");
               } else {
                    this.onResultFunction = onResultFunction;
               }
               if (onWarningFunction == null) {
                    console.error("ERROR: MessagingCallbackImpl onWarningFunction is not defined.");
               } else {
                    this.onWarningFunction = onWarningFunction;
               }
          }

          /**
             This method is called on Error

             @param error returned by the platform
             @since ARP1.0
          */
          public onError(error : IMessagingCallbackError) : void {
               if (typeof this.onErrorFunction === 'undefined' || this.onErrorFunction == null) {
                    console.warn("WARNING: MessagingCallbackImpl contains a null reference to onErrorFunction.");
               } else {
                    this.onErrorFunction(error);
               }
          }

          /**
             This method is called on Result

             @param success true if sent;false otherwise
             @since ARP1.0
          */
          public onResult(success : boolean) : void {
               if (typeof this.onResultFunction === 'undefined' || this.onResultFunction == null) {
                    console.warn("WARNING: MessagingCallbackImpl contains a null reference to onResultFunction.");
               } else {
                    this.onResultFunction(success);
               }
          }

          /**
             This method is called on Warning

             @param success true if sent;false otherwise
             @param warning returned by the platform
             @since ARP1.0
          */
          public onWarning(success : boolean, warning : IMessagingCallbackWarning) : void {
               if (typeof this.onWarningFunction === 'undefined' || this.onWarningFunction == null) {
                    console.warn("WARNING: MessagingCallbackImpl contains a null reference to onWarningFunction.");
               } else {
                    this.onWarningFunction(success, warning);
               }
          }

     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
