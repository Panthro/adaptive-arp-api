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

package me.adaptive.arp.impl;

import me.adaptive.arp.api.*;

/**
   Interface for testing the Capabilities operations
   Auto-generated implementation of ICapabilities specification.
*/
public class CapabilitiesDelegate extends BaseSystemDelegate implements ICapabilities {

     /**
        Register delegate with the Application Registry.
     */
     static {
          AppRegistryBridge.getInstance().getCapabilitiesBridge().setDelegate(new CapabilitiesDelegate());
     }

     /**
        Default Constructor.
     */
     public CapabilitiesDelegate() {
          super();
     }

     /**
        Determines whether a specific hardware button is supported for interaction.

        @param type Type of feature to check.
        @return true is supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasButtonSupport(ICapabilitiesButton type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasButtonSupport");
          // return response;
     }

     /**
        Determines whether a specific Communication capability is supported by
the device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasCommunicationSupport(ICapabilitiesCommunication type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasCommunicationSupport");
          // return response;
     }

     /**
        Determines whether a specific Data capability is supported by the device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasDataSupport(ICapabilitiesData type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasDataSupport");
          // return response;
     }

     /**
        Determines whether a specific Media capability is supported by the
device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasMediaSupport(ICapabilitiesMedia type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasMediaSupport");
          // return response;
     }

     /**
        Determines whether a specific Net capability is supported by the device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasNetSupport(ICapabilitiesNet type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasNetSupport");
          // return response;
     }

     /**
        Determines whether a specific Notification capability is supported by the
device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasNotificationSupport(ICapabilitiesNotification type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasNotificationSupport");
          // return response;
     }

     /**
        Determines whether a specific Sensor capability is supported by the
device.

        @param type Type of feature to check.
        @return true if supported, false otherwise.
        @since ARP1.0
     */
     public Bool hasSensorSupport(ICapabilitiesSensor type) {
          Bool response;
          // TODO: Not implemented.
          throw new UnsupportedOperationException(this.getClass().getName()+":hasSensorSupport");
          // return response;
     }

}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/