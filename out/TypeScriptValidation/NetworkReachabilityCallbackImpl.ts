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
///<reference path="INetworkReachabilityCallback.ts"/>
///<reference path="INetworkReachabilityCallbackError.ts"/>
///<reference path="INetworkReachabilityCallbackWarning.ts"/>

module Adaptive {

     /**
        Interface for Managing the Network reachability callback result
        Auto-generated implementation of INetworkReachabilityCallback specification.
     */
     export class NetworkReachabilityCallbackImpl extends BaseCallbackImpl implements INetworkReachabilityCallback {

          onErrorFunction : (error : INetworkReachabilityCallbackError) => Function;
          onResultFunction : (reachable : boolean) => Function;
          onWarningFunction : (reachable : boolean, warning : INetworkReachabilityCallbackWarning) => Function;

          /**
             Constructor with anonymous handler functions for callback.

             @param onErrorFunction Function receiving parameters of type: INetworkReachabilityCallbackError
             @param onResultFunction Function receiving parameters of type: boolean
             @param onWarningFunction Function receiving parameters of type: boolean, INetworkReachabilityCallbackWarning
          */
          constructor(onErrorFunction : (error : INetworkReachabilityCallbackError) => Function, onResultFunction : (reachable : boolean) => Function, onWarningFunction : (reachable : boolean, warning : INetworkReachabilityCallbackWarning) => Function) {
               super(++registeredCounter);
               if (onErrorFunction == null) {
                    console.error("ERROR: NetworkReachabilityCallbackImpl onErrorFunction is not defined.");
               } else {
                    this.onErrorFunction = onErrorFunction;
               }
               if (onResultFunction == null) {
                    console.error("ERROR: NetworkReachabilityCallbackImpl onResultFunction is not defined.");
               } else {
                    this.onResultFunction = onResultFunction;
               }
               if (onWarningFunction == null) {
                    console.error("ERROR: NetworkReachabilityCallbackImpl onWarningFunction is not defined.");
               } else {
                    this.onWarningFunction = onWarningFunction;
               }
          }

          /**
             No data received - error condition, not authorized .

             @param error Error value
             @since ARP1.0
          */
          public onError(error : INetworkReachabilityCallbackError) : void {
               if (typeof this.onErrorFunction === 'undefined' || this.onErrorFunction == null) {
                    console.warn("WARNING: NetworkReachabilityCallbackImpl contains a null reference to onErrorFunction.");
               } else {
                    this.onErrorFunction(error);
               }
          }

          /**
             Correct data received.

             @param reachable Indicates if the host is reachable
             @since ARP1.0
          */
          public onResult(reachable : boolean) : void {
               if (typeof this.onResultFunction === 'undefined' || this.onResultFunction == null) {
                    console.warn("WARNING: NetworkReachabilityCallbackImpl contains a null reference to onResultFunction.");
               } else {
                    this.onResultFunction(reachable);
               }
          }

          /**
             Data received with warning - ie Found entries with existing key and values have been overriden

             @param reachable Indicates if the host is reachable
             @param warning   Warning value
             @since ARP1.0
          */
          public onWarning(reachable : boolean, warning : INetworkReachabilityCallbackWarning) : void {
               if (typeof this.onWarningFunction === 'undefined' || this.onWarningFunction == null) {
                    console.warn("WARNING: NetworkReachabilityCallbackImpl contains a null reference to onWarningFunction.");
               } else {
                    this.onWarningFunction(reachable, warning);
               }
          }

     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
