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
var __extends = this.__extends || function (d, b) {
    for (var p in b) if (b.hasOwnProperty(p)) d[p] = b[p];
    function __() { this.constructor = d; }
    __.prototype = b.prototype;
    d.prototype = new __();
};
///<reference path="APIBean.ts"/>
var Adaptive;
(function (Adaptive) {
    /**
       Structure representing the value of a http cookie.

       @author Aryslan
       @since ARP1.0
       @version 1.0
    */
    var ServiceCookie = (function (_super) {
        __extends(ServiceCookie, _super);
        /**
           Contructor with fields

           @param name     Name of the cookie
           @param value    Value of the cookie
           @param domain   Domain of the cookie
           @param path     Path of the cookie
           @param scheme   Scheme of the cookie
           @param secure   Privacy of the cookie
           @param expiry   Expiration date of the cookie
           @param creation Creation date of the cookie
           @since ARP1.0
        */
        function ServiceCookie(name, value, domain, path, scheme, secure, expiry, creation) {
            _super.call(this);
            this.name = name;
            this.value = value;
            this.domain = domain;
            this.path = path;
            this.scheme = scheme;
            this.secure = secure;
            this.expiry = expiry;
            this.creation = creation;
        }
        /**
           Returns the creation date

           @return Creation date of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.getCreation = function () {
            return this.creation;
        };
        /**
           Sets the creation date

           @param creation Creation date of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setCreation = function (creation) {
            this.creation = creation;
        };
        /**
           Returns the domain

           @return domain
           @since ARP1.0
        */
        ServiceCookie.prototype.getDomain = function () {
            return this.domain;
        };
        /**
           Set the domain

           @param domain Domain of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setDomain = function (domain) {
            this.domain = domain;
        };
        /**
           Returns the expiration date in milis

           @return expiry
           @since ARP1.0
        */
        ServiceCookie.prototype.getExpiry = function () {
            return this.expiry;
        };
        /**
           Set the expiration date in milis

           @param expiry Expiration date of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setExpiry = function (expiry) {
            this.expiry = expiry;
        };
        /**
           Returns the cookie name

           @return name Name of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.getName = function () {
            return this.name;
        };
        /**
           Set the cookie name

           @param name Name of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setName = function (name) {
            this.name = name;
        };
        /**
           Returns the path

           @return path
           @since ARP1.0
        */
        ServiceCookie.prototype.getPath = function () {
            return this.path;
        };
        /**
           Set the path

           @param path Path of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setPath = function (path) {
            this.path = path;
        };
        /**
           Returns the scheme

           @return scheme
           @since ARP1.0
        */
        ServiceCookie.prototype.getScheme = function () {
            return this.scheme;
        };
        /**
           Set the scheme

           @param scheme Scheme of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setScheme = function (scheme) {
            this.scheme = scheme;
        };
        /**
           Returns whether the cookie is secure or not

           @return true if the cookie is secure; false otherwise
           @since ARP1.0
        */
        ServiceCookie.prototype.getSecure = function () {
            return this.secure;
        };
        /**
           Set whether the cookie is secure or not

           @param secure Privacy of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setSecure = function (secure) {
            this.secure = secure;
        };
        /**
           Returns the cookie value

           @return Value of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.getValue = function () {
            return this.value;
        };
        /**
           Set the cookie value

           @param value Value of the cookie
           @since ARP1.0
        */
        ServiceCookie.prototype.setValue = function (value) {
            this.value = value;
        };
        return ServiceCookie;
    })(Adaptive.APIBean);
    Adaptive.ServiceCookie = ServiceCookie;
})(Adaptive || (Adaptive = {}));
//# sourceMappingURL=ServiceCookie.js.map