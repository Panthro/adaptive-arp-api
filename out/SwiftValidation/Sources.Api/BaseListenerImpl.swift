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

    * @version v2.0.2

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

/**
   Base application for Listener purposes
   Auto-generated implementation of IBaseListener specification.
*/
public class BaseListenerImpl : NSObject, IBaseListener {

     /**
        Unique id of listener.
     */
     private var id : Int

     /**
        Group of API.
     */
     private var apiGroup : IAdaptiveRPGroup?

     /**
        JSON Serializer.
     */
     //TODO: protected Gson gson;

     /**
        Constructor with listener id.

        @param id  The id of the listener.
     */
     public init(id : Int) {
          self.id = id
          self.apiGroup = IAdaptiveRPGroup.Application
          // TODO: this.gson = new Gson();
     }

     /**
        Get the listener id.
        @return long with the identifier of the listener.
     */
     public final func getId() -> Int {
          return self.id
     }

     /**
        Return the API group for the given interface.
     */
     public final func getAPIGroup() -> IAdaptiveRPGroup {
          return self.apiGroup!
     }
     /**
        Return the JSON serializer.
        @return Current JSON serializer.
     */
     //TODO: public final Gson getJSONAPI() {
          //return this.gson;
     //}

}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/