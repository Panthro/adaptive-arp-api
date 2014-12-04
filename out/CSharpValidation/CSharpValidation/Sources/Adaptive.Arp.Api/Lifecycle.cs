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
        Represents a specific application life-cycle stage.

        @author Carlos Lozano Diez
        @since 1.0
        @version 1.0
     */
     public class Lifecycle
     {

          /**
             Represent the state of the app
          */
          public LifecycleState State { get; set; }

          /**
             Constructor used by the implementation
          */
          public Lifecycle()  {
          }

          /**
             Constructor used by the implementation

             @param State
             @since ARP1.0
          */
          public Lifecycle(LifecycleState State) : base () {
               this.State = State;
          }

          /**
             Returns the state of the application

             @return state of the app
             @since ARP1.0
          */
          public LifecycleState GetState() {
               return this.State;
          }

          /**
             Set the State of the application

             @param state of the app
             @since ARP1.0
          */
          public void SetState(LifecycleState State) {
               this.State = State;
          }


     }
}

/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/