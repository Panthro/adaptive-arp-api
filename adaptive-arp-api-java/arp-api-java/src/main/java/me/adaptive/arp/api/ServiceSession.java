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

    * @version v2.0.0
    
-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

package me.adaptive.arp.api;

/**
   Represents a session object for HTTP request and responses

   @author Ferran Vila Conesa
   @since ARP1.0
   @version 1.0
*/
public class ServiceSession {

     /**
        The attributes of the response
     */
     private Object[] attributes;
     /**
        The cookies of the response
     */
     private ServiceCookie[] cookies;

     /**
        Default constructor

        @since ARP1.0
     */
     public ServiceSession() {
     }

     /**
        Constructor with fields

        @param cookies    The cookies of the response
        @param attributes Attributes of the response
        @since ARP1.0
     */
     public ServiceSession(ServiceCookie[] cookies, Object[] attributes) {
          this();
          this.cookies = cookies;
          this.attributes = attributes;
     }

     /**
        Gets the attributes of the response

        @return Attributes of the response
        @since ARP1.0
     */
     public Object[] getAttributes() {
          return this.attributes;
     }

     /**
        Sets the attributes for the response

        @param attributes Attributes of the response
        @since ARP1.0
     */
     public void setAttributes(Object[] attributes) {
          this.attributes = attributes;
     }

     /**
        Returns the cookies of the response

        @return The cookies of the response
        @since ARP1.0
     */
     public ServiceCookie[] getCookies() {
          return this.cookies;
     }

     /**
        Sets the cookies of the response

        @param cookies The cookies of the response
        @since ARP1.0
     */
     public void setCookies(ServiceCookie[] cookies) {
          this.cookies = cookies;
     }


}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/