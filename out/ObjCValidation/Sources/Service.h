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

#import <Foundation/Foundation.h>
#import <ServiceEndpoint.h>

/**
Represents an instance of a service.

@author Aryslan
@since v2.0
@version 1.0
*/
@interface Service : NSObject

     /**
        The service name
     */
     @property NSString *name;
     /**
        Endpoint of the service
        Array objects must be of ServiceEndpoint type.
     */
     @property NSArray *serviceEndpoints;

     /**
        Default constructor

        @since v2.0
     */
     - (id) init;

     /**
        Constructor used by the implementation

        @param serviceEndpoints Endpoints of the service
        @param name             Name of the service
        @since v2.0.6
     */
     - (id) initWithServiceEndpointsName:(NSArray*)serviceEndpoints name:(NSString*)name;


@end

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
