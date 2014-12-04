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
        Represents a specific user or system locate.

        @author Carlos Lozano Diez
        @since 1.0
        @version 1.0
     */
     public class Locale
     {

          /**
             A valid ISO Country Code.
          */
          public string Country { get; set; }
          /**
             A valid ISO Language Code.
          */
          public string Language { get; set; }

          /**
             Constructor used by the implementation
          */
          public Locale()  {
          }

          /**
             Constructor used by the implementation

             @param Country
             @param Language
             @since ARP1.0
          */
          public Locale(string Language, string Country) : base () {
               this.Language = Language;
               this.Country = Country;
          }

          /**
             Returns the country code

             @return country code
             @since ARP1.0
          */
          public string GetCountry() {
               return this.Country;
          }

          /**
             Set the country code

             @param country code
             @since ARP1.0
          */
          public void SetCountry(string Country) {
               this.Country = Country;
          }

          /**
             Returns the language code

             @return language code
             @since ARP1.0
          */
          public string GetLanguage() {
               return this.Language;
          }

          /**
             Set the language code

             @param language code
             @since ARP1.0
          */
          public void SetLanguage(string Language) {
               this.Language = Language;
          }


     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/