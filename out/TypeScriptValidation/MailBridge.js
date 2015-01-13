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
var __extends = this.__extends || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
///<reference path="APIRequest.ts"/>
///<reference path="BasePIMBridge.ts"/>
///<reference path="CommonUtil.ts"/>
///<reference path="Email.ts"/>
///<reference path="IAdaptiveRPGroup.ts"/>
///<reference path="IBasePIM.ts"/>
///<reference path="IMail.ts"/>
///<reference path="IMessagingCallback.ts"/>
///<reference path="MessagingCallback.ts"/>
var Adaptive;
(function (Adaptive) {
    /**
       Interface for Managing the Mail operations

       @author Francisco Javier Martin Bueno
       @since ARP1.0
    */
    var MailBridge = (function (_super) {
        __extends(MailBridge, _super);
        /**
           Default constructor.
        */
        function MailBridge() {
            _super.call(this);
        }
        /**
           Send an Email

           @param data     Payload of the email
           @param callback Result callback of the operation
           @since ARP1.0
        */
        MailBridge.prototype.sendEmail = function (data, callback) {
            // Create and populate API request.
            var arParams = [];
            arParams.push(JSON.stringify(data));
            var ar = new Adaptive.APIRequest("IMail", "sendEmail", arParams, callback.getId());
            // Create and send JSON request.
            var xhr = new XMLHttpRequest();
            xhr.open("POST", Adaptive.bridgePath, false);
            // Add callback reference to local dictionary.
            Adaptive.registeredMessagingCallback.add("" + callback.getId(), callback);
            xhr.send(JSON.stringify(ar));
            // Check response.
            if (xhr.status == 200) {
            }
            else {
                console.error("ERROR: " + xhr.status + " sending 'MailBridge.sendEmail' request.");
                // Unknown error - remove from dictionary and notify callback.
                Adaptive.registeredMessagingCallback.remove("" + callback.getId());
                callback.onError(Adaptive.IMessagingCallbackError.Unknown);
            }
        };
        return MailBridge;
    })(Adaptive.BasePIMBridge);
    Adaptive.MailBridge = MailBridge;
})(Adaptive || (Adaptive = {}));
//# sourceMappingURL=MailBridge.js.map