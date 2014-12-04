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
   Represents a specific application life-cycle stage.

   @author Carlos Lozano Diez
   @since 1.0
   @version 1.0
*/
public class Lifecycle : NSObject {

     /**
        Represent the state of the app
     */
     var state : LifecycleState?

     /**
        Constructor used by the implementation
     */
     public override init() {
     }

     /**
        Constructor used by the implementation

        @param state
        @since ARP1.0
     */
     public convenience init(state: LifecycleState) {
          self.init()
          self.state = state
     }

     /**
        Returns the state of the application

        @return state of the app
        @since ARP1.0
     */
     public func getState() -> LifecycleState? {
          return self.state
     }

     /**
        Set the State of the application

        @param state of the app
        @since ARP1.0
     */
     public func setState(state: LifecycleState) {
          self.state = state
     }


}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
