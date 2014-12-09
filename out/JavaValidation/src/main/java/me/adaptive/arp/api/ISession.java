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

package me.adaptive.arp.api;

/**
   Definition of ISession interface/protocol.

   @author Carlos Lozano Diez
   @since 1.0
   @version 1.0
*/
public interface ISession extends IBaseCommunication {
     /**
        Returns an attribute object
        @return object attribute
        @since ARP1.0
     */
     Object getAttribute(String name);

     /**
        Returns all Session Attributes
     */
     Object[] getAttributes();

     /**
        Returns the cookie array
        @return cookie array
        @since ARP1.0
     */
     Cookie[] getCookies();

     /**
        Returns all attibute names
        @return array with all attribute names
     */
     String[] listAttributeNames();

     /**
        Remove an attribute by its name
        @param name
     */
     void removeAttribute(String name);

     /**
        Remove all attributes
     */
     void removeAttributes();

     /**
        Remove a cookie
        @param cookie
     */
     void removeCookie(Cookie cookie);

     /**
        Remove a cookies array
        @param cookies
     */
     void removeCookies(Cookie[] cookies);

     /**
        Set an attribute
        @param name
        @param value
     */
     void setAttribute(String name, Object value);

     /**
        Set a cookie object
        @param cookie
     */
     void setCookie(Cookie cookie);

     /**
        Set the cookies array
        @param cookies
     */
     void setCookies(Cookie[] cookies);

}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
