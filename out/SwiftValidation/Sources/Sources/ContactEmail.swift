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
   Structure representing the email data elements of a contact.

   @author Carlos Lozano Diez
   @since 1.0
   @version 1.0
*/
public class ContactEmail : NSObject {

     /**
        The type of the email
     */
     var type : ContactEmailType?
     /**
        Email of the Contact
     */
     var email : String?
     /**
        Whether the email is the primary one or not
     */
     var primary : Bool?

     /**
        Constructor used by the implementation
     */
     public override init() {
     }

     /**
        Constructor used by the implementation

        @param type
        @param primary
        @param email
        @since ARP1.0
     */
     public convenience init(type: ContactEmailType, primary: Bool, email: String) {
          self.init()
          self.type = type
          self.primary = primary
          self.email = email
     }

     /**
        Returns the type of the email

        @return EmailType
        @since ARP1.0
     */
     public func getType() -> ContactEmailType? {
          return self.type
     }

     /**
        Set the type of the email

        @param type
        @since ARP1.0
     */
     public func setType(type: ContactEmailType) {
          self.type = type
     }

     /**
        Returns the email of the Contact

        @return email
        @since ARP1.0
     */
     public func getEmail() -> String? {
          return self.email
     }

     /**
        Set the email of the Contact

        @param email
        @since ARP1.0
     */
     public func setEmail(email: String) {
          self.email = email
     }

     /**
        Returns if the email is primary

        @return true if the email is primary; false otherwise
        @since ARP1.0
     */
     public func getPrimary() -> Bool? {
          return self.primary
     }

     /**
        Set if the email

        @param primary true if the email is primary; false otherwise
        @since ARP1.0
     */
     public func setPrimary(primary: Bool) {
          self.primary = primary
     }


}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
