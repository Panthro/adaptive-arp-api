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

    * @version v2.0.3

-------------------------------------------| aut inveniam viam aut faciam |--------------------------------------------
*/

///<reference path="BaseCallback.ts"/>
///<reference path="CommonUtil.ts"/>
///<reference path="FileDescriptor.ts"/>
///<reference path="IFileDataStoreResultCallback.ts"/>
///<reference path="IFileDataStoreResultCallbackError.ts"/>
///<reference path="IFileDataStoreResultCallbackWarning.ts"/>

module Adaptive {

     /**
        Interface for Managing the File store operations callback
        Auto-generated implementation of IFileDataStoreResultCallback specification.
     */

     /**
        FileDataStoreResultCallback control dictionary.
     */
     export var registeredFileDataStoreResultCallback = new Dictionary<IFileDataStoreResultCallback>([]);

     /**
        FileDataStoreResultCallback global callback handlers.
     */
     export function handleFileDataStoreResultCallbackError(id : number, error : IFileDataStoreResultCallbackError) : void {
          var callback : IFileDataStoreResultCallback = registeredFileDataStoreResultCallback[""+id];
          if (typeof callback === 'undefined' || callback == null) {
               console.error("ERROR: No callback with id "+id+" registered in registeredFileDataStoreResultCallback dictionary.");
          } else {
               registeredFileDataStoreResultCallback.remove(""+id);
               callback.onError(error);
          }
     }
     export function handleFileDataStoreResultCallbackResult(id : number, file : FileDescriptor) : void {
          var callback : IFileDataStoreResultCallback = registeredFileDataStoreResultCallback[""+id];
          if (typeof callback === 'undefined' || callback == null) {
               console.error("ERROR: No callback with id "+id+" registered in registeredFileDataStoreResultCallback dictionary.");
          } else {
               registeredFileDataStoreResultCallback.remove(""+id);
               callback.onResult(file);
          }
     }
     export function handleFileDataStoreResultCallbackWarning(id : number, file : FileDescriptor, warning : IFileDataStoreResultCallbackWarning) : void {
          var callback : IFileDataStoreResultCallback = registeredFileDataStoreResultCallback[""+id];
          if (typeof callback === 'undefined' || callback == null) {
               console.error("ERROR: No callback with id "+id+" registered in registeredFileDataStoreResultCallback dictionary.");
          } else {
               registeredFileDataStoreResultCallback.remove(""+id);
               callback.onWarning(file, warning);
          }
     }

     export class FileDataStoreResultCallback extends BaseCallback implements IFileDataStoreResultCallback {

          onErrorFunction : (error : IFileDataStoreResultCallbackError) => void;
          onResultFunction : (file : FileDescriptor) => void;
          onWarningFunction : (file : FileDescriptor, warning : IFileDataStoreResultCallbackWarning) => void;

          /**
             Constructor with anonymous handler functions for callback.

             @param onErrorFunction Function receiving parameters of type: IFileDataStoreResultCallbackError
             @param onResultFunction Function receiving parameters of type: FileDescriptor
             @param onWarningFunction Function receiving parameters of type: FileDescriptor, IFileDataStoreResultCallbackWarning
          */
          constructor(onErrorFunction : (error : IFileDataStoreResultCallbackError) => void, onResultFunction : (file : FileDescriptor) => void, onWarningFunction : (file : FileDescriptor, warning : IFileDataStoreResultCallbackWarning) => void) {
               super(++registeredCounter);
               if (onErrorFunction == null) {
                    console.error("ERROR: FileDataStoreResultCallback onErrorFunction is not defined.");
               } else {
                    this.onErrorFunction = onErrorFunction;
               }
               if (onResultFunction == null) {
                    console.error("ERROR: FileDataStoreResultCallback onResultFunction is not defined.");
               } else {
                    this.onResultFunction = onResultFunction;
               }
               if (onWarningFunction == null) {
                    console.error("ERROR: FileDataStoreResultCallback onWarningFunction is not defined.");
               } else {
                    this.onWarningFunction = onWarningFunction;
               }
          }

          /**
             Error processing data retrieval/storage operation.

             @param error Error condition encountered.
             @since ARP1.0
          */
          public onError(error : IFileDataStoreResultCallbackError) : void {
               if (typeof this.onErrorFunction === 'undefined' || this.onErrorFunction == null) {
                    console.warn("WARNING: FileDataStoreResultCallback contains a null reference to onErrorFunction.");
               } else {
                    this.onErrorFunction(error);
               }
          }

          /**
             Result of data storage operation.

             @param file File reference to stored data.
             @since ARP1.0
          */
          public onResult(file : FileDescriptor) : void {
               if (typeof this.onResultFunction === 'undefined' || this.onResultFunction == null) {
                    console.warn("WARNING: FileDataStoreResultCallback contains a null reference to onResultFunction.");
               } else {
                    this.onResultFunction(file);
               }
          }

          /**
             Result with warning of data retrieval/storage operation.

             @param file    File being loaded/stored.
             @param warning Warning condition encountered.
             @since ARP1.0
          */
          public onWarning(file : FileDescriptor, warning : IFileDataStoreResultCallbackWarning) : void {
               if (typeof this.onWarningFunction === 'undefined' || this.onWarningFunction == null) {
                    console.warn("WARNING: FileDataStoreResultCallback contains a null reference to onWarningFunction.");
               } else {
                    this.onWarningFunction(file, warning);
               }
          }

     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
