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
   Interface for Managing the File System operations
   Auto-generated implementation of IFileSystem specification.
*/
public class FileSystemBridge : BaseDataBridge, IFileSystem, APIBridge {

     /**
        API Delegate.
     */
     private var delegate : IFileSystem = nil

     /**
        Constructor with delegate.

        @param delegate The delegate implementing platform specific functions.
     */
     public init(delegate : IFileSystem) {
          super.init()
          self.delegate = delegate
     }
     /**
        Get the delegate implementation.
        @return IFileSystem delegate that manages platform specific functions..
     */
     public final func getDelegate() -> IFileSystem {
          return self.delegate
     }
     /**
        Set the delegate implementation.

        @param delegate The delegate implementing platform specific functions.
     */
     public final func setDelegate(delegate : IFileSystem) {
          self.delegate = delegate;
     }

     /**
        Creates a new reference to a new or existing location in the filesystem.
This method does not create the actual file in the specified folder.

        @param parent Parent directory.
        @param name   Name of new file or directory.
        @return A reference to a new or existing location in the filesystem.
        @since ARP1.0
     */
     public func createFileDescriptor(parent : IFile , name : String ) -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing createFileDescriptor({"+parent+"},{"+name+"}).")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.createFileDescriptor(parent, name)
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'createFileDescriptor' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'createFileDescriptor'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the cache folder for the current application.
This path must always be writable by the current application.
This path is volatile and may be cleaned by the OS periodically.

        @return Path to the application's cache folder.
        @since ARP1.0
     */
     public func getApplicationCacheFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getApplicationCacheFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getApplicationCacheFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getApplicationCacheFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getApplicationCacheFolder'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the cloud synchronizable folder for the current application.
This path must always be writable by the current application.

        @return Path to the application's cloud storage folder.
        @since ARP1.0
     */
     public func getApplicationCloudFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getApplicationCloudFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getApplicationCloudFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getApplicationCloudFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getApplicationCloudFolder'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the documents folder for the current application.
This path must always be writable by the current application.

        @return Path to the application's documents folder.
        @since ARP1.0
     */
     public func getApplicationDocumentsFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getApplicationDocumentsFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getApplicationDocumentsFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getApplicationDocumentsFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getApplicationDocumentsFolder'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the application installation folder.
This path may or may not be directly readable or writable - it usually contains the app binary and data.

        @return Path to the application folder.
        @since ARP1.0
     */
     public func getApplicationFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getApplicationFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getApplicationFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getApplicationFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getApplicationFolder'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the protected storage folder for the current application.
This path must always be writable by the current application.

        @return Path to the application's protected storage folder.
        @since ARP1.0
     */
     public func getApplicationProtectedFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getApplicationProtectedFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getApplicationProtectedFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getApplicationProtectedFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getApplicationProtectedFolder'.")
               }
          }
          return result          
     }

     /**
        Returns the file system dependent file separator.

        @return char with the directory/file separator.
        @since ARP1.0
     */
     public func getSeparator() -> Character {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getSeparator.")
          }

          var result : Character = ' '
          if (self.delegate != nil) {
               result = self.delegate.getSeparator()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getSeparator' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getSeparator'.")
               }
          }
          return result          
     }

     /**
        Returns a reference to the external storage folder provided by the OS. This may
be an external SSD card or similar. This type of storage is removable and by
definition, not secure.
This path may or may not be writable by the current application.

        @return Path to the application's documents folder.
        @since ARP1.0
     */
     public func getSystemExternalFolder() -> IFile {
          // Start logging elapsed time.
          var tIn : NSTimeInterval = NSDate.timeIntervalSinceReferenceDate()
          var logger : ILogging = AppRegistryBridge.sharedInstance.getLoggingBridge()

          if (logger!=null) {
               logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executing getSystemExternalFolder.")
          }

          var result : IFile = nil
          if (self.delegate != nil) {
               result = self.delegate.getSystemExternalFolder()
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.DEBUG, self.apiGroup.name(),"FileSystemBridge executed 'getSystemExternalFolder' in \(UInt64(tIn.distanceTo(NSDate.timeIntervalSinceReferenceDate())*1000)) ms.")
                }
          } else {
               if (logger != nil) {
                    logger.log(ILoggingLogLevel.ERROR, self.apiGroup.name(),"FileSystemBridge no delegate for 'getSystemExternalFolder'.")
               }
          }
          return result          
     }

     /**
        Invokes the given method specified in the API request object.

        @param request APIRequest object containing method name and parameters.
        @return String with JSON response or a zero length string if the response is asynchronous or null if method not found.
     */
     public func invoke(request : APIRequest) -> String? {
          var responseJSON : String = ""
          switch (request.getMethodName()) {
               case "createFileDescriptor":
                    var parent0 : IFile = this.gson.fromJson(request.getParameters()[0], IFile.class);
                    var name0 : String = this.gson.fromJson(request.getParameters()[1], String.class);
                    IFile response0 = this.createFileDescriptor(parent0, name0);
                    if (response0 != null) {
                         responseJSON = this.gson.toJson(response0);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getApplicationCacheFolder":
                    IFile response1 = this.getApplicationCacheFolder();
                    if (response1 != null) {
                         responseJSON = this.gson.toJson(response1);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getApplicationCloudFolder":
                    IFile response2 = this.getApplicationCloudFolder();
                    if (response2 != null) {
                         responseJSON = this.gson.toJson(response2);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getApplicationDocumentsFolder":
                    IFile response3 = this.getApplicationDocumentsFolder();
                    if (response3 != null) {
                         responseJSON = this.gson.toJson(response3);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getApplicationFolder":
                    IFile response4 = this.getApplicationFolder();
                    if (response4 != null) {
                         responseJSON = this.gson.toJson(response4);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getApplicationProtectedFolder":
                    IFile response5 = this.getApplicationProtectedFolder();
                    if (response5 != null) {
                         responseJSON = this.gson.toJson(response5);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               case "getSeparator":
                    Character response6 = this.getSeparator();
                    responseJSON = this.gson.toJson(response6);
                    break;
               case "getSystemExternalFolder":
                    IFile response7 = this.getSystemExternalFolder();
                    if (response7 != null) {
                         responseJSON = this.gson.toJson(response7);
                    } else {
                         responseJSON = nil;
                    }
                    break;
               default:
                    // 404 - response null.
                    responseJSON = nil;
          }
          return responseJSON;
     }
}
/**
------------------------------------| Engineered with ♥ in Barcelona, Catalonia |--------------------------------------
*/
