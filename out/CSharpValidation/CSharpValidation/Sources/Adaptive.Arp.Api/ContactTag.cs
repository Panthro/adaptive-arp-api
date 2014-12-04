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
        Structure representing the assigned tags data elements of a contact.

        @author Carlos Lozano Diez
        @since 1.0
        @version 1.0
     */
     public class ContactTag
     {

          /**
             The value of the Tag
          */
          public string DataValue { get; set; }
          /**
             The name of the Tag
          */
          public string Name { get; set; }

          /**
             Constructor used by the implementation
          */
          public ContactTag()  {
          }

          /**
             Constructor used by the implementation

             @param DataValue
             @param Name
             @since ARP1.0
          */
          public ContactTag(string Name, string DataValue) : base () {
               this.Name = Name;
               this.DataValue = DataValue;
          }

          /**
             Returns the value of the Tag

             @return value
             @since ARP1.0
          */
          public string GetDataValue() {
               return this.DataValue;
          }

          /**
             Set the value of the Tag

             @param dataValue
             @since ARP1.0
          */
          public void SetDataValue(string DataValue) {
               this.DataValue = DataValue;
          }

          /**
             Returns the name of the Tag

             @return name
             @since ARP1.0
          */
          public string GetName() {
               return this.Name;
          }

          /**
             Set the name of the Tag

             @param name
             @since ARP1.0
          */
          public void SetName(string Name) {
               this.Name = Name;
          }


     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/