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

using System;

namespace Adaptive.Arp.Api
{
     /**
        Structure representing the data elements of an email addressee.

        @author Carlos Lozano Diez
        @since 1.0
        @version 1.0
     */
     public class EmailAddress
     {

          /**
             The Email address
          */
          public string Address { get; set; }

          /**
             Constructor used by the implementation
          */
          public EmailAddress()  {
          }

          /**
             Constructor used by implementation

             @param Address
             @since ARP1.0
          */
          public EmailAddress(string Address) : base () {
               this.Address = Address;
          }

          /**
             Returns the email address

             @return address of the Email
             @since ARP1.0
          */
          public string GetAddress() {
               return this.Address;
          }

          /**
             Set the Email address

             @param address of the Email
             @since ARP1.0
          */
          public void SetAddress(string Address) {
               this.Address = Address;
          }


     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/