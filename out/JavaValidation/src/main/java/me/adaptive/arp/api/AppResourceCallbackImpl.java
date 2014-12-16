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

    * @version v1.0.45
-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

package me.adaptive.arp.api;

import com.google.gson.Gson;

/**
   This interface manages the responses of the resource callback
   Auto-generated implementation of IAppResourceCallback specification.
*/
public class AppResourceCallbackImpl extends BaseCallbackImpl implements IAppResourceCallback {

     /**
        Constructor with callback id.

        @param id  The id of the callback.
     */
     public AppResourceCallbackImpl(long id) {
          super(id);
     }

     /**
        Error result of the App resource operation

        @param error Error fired
        @since ARP1.0
     */
     public void onError(IAppResourceCallbackError error) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleAppResourceCallbackError( '"+getId()+"', JSON.parse(" + this.gson.toJson(error) +") )");
     }

     /**
        Correct result of the App Resource operation

        @param resource Resource
        @since ARP1.0
     */
     public void onResult(IAppResource resource) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleAppResourceCallbackResult( '"+getId()+"', JSON.parse(" + this.gson.toJson(resource) +") )");
     }

     /**
        Warning result of the App Resource operation

        @param resource Resource
        @param warning  Warning fired
        @since ARP1.0
     */
     public void onWarning(IAppResource resource, IAppResourceCallbackWarning warning) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleAppResourceCallbackWarning( '"+getId()+"', JSON.parse(" + this.gson.toJson(resource) +"), JSON.parse(" + this.gson.toJson(warning) +") )");
     }

}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/