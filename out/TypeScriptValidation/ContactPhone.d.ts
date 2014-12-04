/// <reference path="ContactPhoneType.d.ts" />
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
declare module Adaptive {
    /**
       Structure representing the phone data elements of a contact.

       @author Carlos Lozano Diez
       @since 1.0
       @version 1.0
    */
    class ContactPhone {
        /**
           The phone number phoneType
        */
        phoneType: ContactPhoneType;
        /**
           The phone number
        */
        phone: string;
        /**
           Constructor used by implementation to set the contact Phone

           @param phone
           @param phoneType
           @since ARP1.0
        */
        constructor(phone: string, phoneType: ContactPhoneType);
        /**
           Returns the phone phoneType

           @return phoneType
           @since ARP1.0
        */
        getPhoneType(): ContactPhoneType;
        /**
           Set the phoneType of the phone number

           @param phoneType
           @since ARP1.0
        */
        setPhoneType(phoneType: ContactPhoneType): void;
        /**
           Returns the phone number

           @return phone number
           @since ARP1.0
        */
        getPhone(): string;
        /**
           Set the phone number

           @param phone number
           @since ARP1.0
        */
        setPhone(phone: string): void;
    }
}