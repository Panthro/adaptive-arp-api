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

    * @version v2.0.0
    
-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

package me.adaptive.arp.api;

import com.google.gson.Gson;

/**
   Interface for Managing the File store operations callback
   Auto-generated implementation of IFileDataStoreResultCallback specification.
*/
public class FileDataStoreResultCallbackImpl extends BaseCallbackImpl implements IFileDataStoreResultCallback {

     /**
        Constructor with callback id.

        @param id  The id of the callback.
     */
     public FileDataStoreResultCallbackImpl(long id) {
          super(id);
     }

     /**
        Error processing data retrieval/storage operation.

        @param error Error condition encountered.
        @since ARP1.0
     */
     public void onError(IFileDataStoreResultCallbackError error) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleFileDataStoreResultCallbackError( '"+getId()+"', JSON.parse(" + this.gson.toJson(error) +") )");
     }

     /**
        Result of data storage operation.

        @param file File reference to stored data.
        @since ARP1.0
     */
     public void onResult(IFile file) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleFileDataStoreResultCallbackResult( '"+getId()+"', JSON.parse(" + this.gson.toJson(file) +") )");
     }

     /**
        Result with warning of data retrieval/storage operation.

        @param file    File being loaded/stored.
        @param warning Warning condition encountered.
        @since ARP1.0
     */
     public void onWarning(IFile file, IFileDataStoreResultCallbackWarning warning) {
          AppRegistryBridge.getInstance().getPlatformContextWeb().executeJavaScript("handleFileDataStoreResultCallbackWarning( '"+getId()+"', JSON.parse(" + this.gson.toJson(file) +"), JSON.parse(" + this.gson.toJson(warning) +") )");
     }

}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/