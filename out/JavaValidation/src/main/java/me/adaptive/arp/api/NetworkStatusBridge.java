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

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

package me.adaptive.arp.api;

/**
   Interface for Managing the Network status
   Auto-generated implementation of INetworkStatus specification.
*/
public class NetworkStatusBridge extends BaseCommunicationBridge implements INetworkStatus, APIBridge {

     /**
        API Delegate.
     */
     private INetworkStatus delegate;

     /**
        Constructor with delegate.

        @param delegate The delegate implementing platform specific functions.
     */
     public NetworkStatusBridge(INetworkStatus delegate) {
          super();
          this.delegate = delegate;
     }
     /**
        Get the delegate implementation.
     */
     public final INetworkStatus getDelegate() {
          return this.delegate;
     }
     /**
        Set the delegate implementation.

        @param delegate The delegate implementing platform specific functions.
     */
     public final void setDelegate(INetworkStatus delegate) {
          this.delegate = delegate;
     }

     /**
        Add the listener for network status changes of the app

        @param listener Listener with the result
        @since ARP1.0
     */
     public void addNetworkStatusListener(INetworkStatusListener listener) {
          // Start logging elapsed time.
          long tIn = System.currentTimeMillis();
          ILogging logger = null; // TODO: Get reference from IAppRegistry.

          if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executing addNetworkStatusListener({"+listener+"}).");

          if (this.delegate != null) {
               this.delegate.addNetworkStatusListener(listener);
               if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executed 'addNetworkStatusListener' in "+(System.currentTimeMillis()-tIn)+"ms.");
          } else {
               if (logger!=null) logger.log(ILoggingLogLevel.ERROR, this.getAPIGroup().name(),this.getClass().getSimpleName()+" no delegate for 'addNetworkStatusListener'.");
          }
          
     }

     /**
        Un-registers an existing listener from receiving network status events.

        @param listener Listener with the result
        @since ARP1.0
     */
     public void removeNetworkStatusListener(INetworkStatusListener listener) {
          // Start logging elapsed time.
          long tIn = System.currentTimeMillis();
          ILogging logger = null; // TODO: Get reference from IAppRegistry.

          if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executing removeNetworkStatusListener({"+listener+"}).");

          if (this.delegate != null) {
               this.delegate.removeNetworkStatusListener(listener);
               if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executed 'removeNetworkStatusListener' in "+(System.currentTimeMillis()-tIn)+"ms.");
          } else {
               if (logger!=null) logger.log(ILoggingLogLevel.ERROR, this.getAPIGroup().name(),this.getClass().getSimpleName()+" no delegate for 'removeNetworkStatusListener'.");
          }
          
     }

     /**
        Removes all existing listeners from receiving network status events.

        @since ARP1.0
     */
     public void removeNetworkStatusListeners() {
          // Start logging elapsed time.
          long tIn = System.currentTimeMillis();
          ILogging logger = null; // TODO: Get reference from IAppRegistry.

          if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executing removeNetworkStatusListeners.");

          if (this.delegate != null) {
               this.delegate.removeNetworkStatusListeners();
               if (logger!=null) logger.log(ILoggingLogLevel.DEBUG, this.getAPIGroup().name(),this.getClass().getSimpleName()+" executed 'removeNetworkStatusListeners' in "+(System.currentTimeMillis()-tIn)+"ms.");
          } else {
               if (logger!=null) logger.log(ILoggingLogLevel.ERROR, this.getAPIGroup().name(),this.getClass().getSimpleName()+" no delegate for 'removeNetworkStatusListeners'.");
          }
          
     }

     /**
        Invokes the given method specified in the API request object.

        @param request APIRequest object containing method name and parameters.
        @return String with JSON response or a zero length string if the response is asynchronous or null if method not found.
     */
     public String invoke(APIRequest request) {
          String responseJSON = "";
          switch (request.getMethodName()) {
               case "addNetworkStatusListener":
                    break;
               case "removeNetworkStatusListener":
                    break;
               case "removeNetworkStatusListeners":
                    break;
               default:
                    // 404 - response null.
                    responseJSON = null;
          }
          return responseJSON;
     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
