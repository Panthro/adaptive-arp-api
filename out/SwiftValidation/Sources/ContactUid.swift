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

/**
   Structure representing the internal unique identifier data elements of a contact.

   @author Carlos Lozano Diez
   @since 1.0
   @version 1.0
*/
public class ContactUid : NSObject {

     /**
        The id of the Contact
     */
     var contactId : String?

     /**
        Constructor used by the implementation
     */
     public override init() {
     }

     /**
        Constructor used by implementation to set the Contact id.

        @param contactId Internal unique contact id.
        @since ARP1.0
     */
     public convenience init(contactId: String) {
          self.init()
          self.contactId = contactId
     }

     /**
        Returns the contact id

        @return Contactid Internal unique contact id.
        @since ARP1.0
     */
     public func getContactId() -> String? {
          return self.contactId
     }

     /**
        Set the id of the Contact

        @param contactId Internal unique contact id.
        @since ARP1.0
     */
     public func setContactId(contactId: String) {
          self.contactId = contactId
     }


}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/