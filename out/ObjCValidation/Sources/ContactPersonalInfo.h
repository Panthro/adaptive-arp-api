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

    * @version v2.1.5

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

#import <APIBean.h>
#import <Foundation/Foundation.h>

/**
Structure representing the personal info data elements of a contact.

@author Francisco Javier Martin Bueno
@since v2.0
@version 1.0
*/
@interface ContactPersonalInfo : APIBean

     /**
        The title of the Contact
     */
     typedef NS_OPTIONS(NSUInteger, ContactPersonalInfoTitle) {
          ContactPersonalInfoTitle_Mr = 0,
          ContactPersonalInfoTitle_Mrs = 1,
          ContactPersonalInfoTitle_Ms = 2,
          ContactPersonalInfoTitle_Dr = 3,
          ContactPersonalInfoTitle_Unknown = 4
     };

     @property ContactPersonalInfoTitle *title;
     /**
        The last name of the Contact
     */
     @property NSString *lastName;
     /**
        The middle name of the Contact if it proceeds
     */
     @property NSString *middleName;
     /**
        The name of the Contact
     */
     @property NSString *name;

     /**
        Default constructor

        @since v2.0
     */
     - (id) init;

     /**
        The Constructor used by the implementation

        @param name       of the Contact
        @param middleName of the Contact
        @param lastName   of the Contact
        @param title      of the Contact
        @since v2.0
     */
     - (id) initWithNameMiddleNameLastNameTitle:(NSString*)name middleName:(NSString*)middleName lastName:(NSString*)lastName title:(ContactPersonalInfoTitle*)title;


@end

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
