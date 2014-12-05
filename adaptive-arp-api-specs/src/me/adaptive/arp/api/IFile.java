/*
 * =| ADAPTIVE RUNTIME PLATFORM |=======================================================================================
 *
 * (C) Copyright 2013-2014 Carlos Lozano Diez t/a Adaptive.me <http://adaptive.me>.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on
 * an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the
 * specific language governing permissions and limitations under the License.
 *
 * Original author:
 *
 *     * Carlos Lozano Diez
 *                 <http://github.com/carloslozano>
 *                 <http://twitter.com/adaptivecoder>
 *                 <mailto:carlos@adaptive.me>
 *
 * Contributors:
 *
 *     *
 *
 * =====================================================================================================================
 */

package me.adaptive.arp.api;

public interface IFile extends IFilePath {

    /**
     * Check whether this is a path of a file.
     *
     * @return true if this is a path to a folder/directory, false if this is a path to a file.
     * @since ARP1.0
     */
    boolean isDirectory();

    /**
     * Check whether the file/path exists.
     *
     * @return True if the file exists in the filesystem, false otherwise.
     * @since ARP1.0
     */
    boolean exists();

    /**
     * Deletes the given file or path. If the file is a directory and contains files and or subdirectories, these will be
     * deleted if the cascade parameter is set to true.
     *
     * @param cascade Whether to delete sub-files and sub-folders.
     * @return True if files (and sub-files and folders) whether deleted.
     * @since ARP1.0
     */
    boolean delete(boolean cascade);

    /**
     * Creates a file with the specified name.
     *
     * @param name     Name of the file to create.
     * @param callback Result of the operation.
     * @since ARP1.0
     */
    public void create(String name, IFileResultCallback callback);

    /**
     * Creates a file with the specified name in the specified path.
     *
     * @param path     String representation of the path.
     * @param name     Name of the file to create.
     * @param callback Result of the operation.
     * @since ARP1.0
     */
    public void createWithPath(String path, String name, IFileResultCallback callback);


    /**
     * Creates the parent path (or paths, if recursive) to the given file/path if it doesn't already exist.
     *
     * @param recursive Whether to create all parent path elements.
     * @return True if the path was created, false otherwise (or it exists already).
     * @since ARP1.0
     */
    boolean mkDir(boolean recursive);

    /**
     * List all the files contained within this file/path reference. If the reference is a file, it will not yield
     * any results.
     *
     * @param callback Result of operation.
     * @since ARP1.0
     */
    void listFiles(IFileListResultCallback callback);

    /**
     * List all the files matching the speficied regex filter within this file/path reference. If the reference
     * is a file, it will not yield any results.
     *
     * @param regex    Filter (eg. *.jpg, *.png, Fil*) name string.
     * @param callback Result of operation.
     * @since ARP1.0
     */
    void listFilesForRegex(String regex, IFileListResultCallback callback);

    /**
     * Returns the size in bytes of the file or zero if the reference is a folder.
     *
     * @return Size in bytes of file.
     * @since ARP1.0
     */
    long getSize();

    /**
     * Returns the name of the file if the reference is a file or the last path element of the folder.
     *
     * @return The name of the file.
     * @since ARP1.0
     */
    String getName();

    /**
     * Returns the path element of the file or folder (excluding the last path element if it's a directory).
     *
     * @return The path to the file.
     * @since ARP1.0
     */
    String getPath();

    /**
     * Returns the milliseconds passed since 1/1/1970 since the file was created.
     *
     * @return Timestamp in milliseconds.
     * @since ARP1.0
     */
    long getDateCreated();

    /**
     * Returns the milliseconds passed since 1/1/1970 since the file was modified.
     *
     * @return Timestamp in milliseconds.
     * @since ARP1.0
     */
    long getDateModified();

    /**
     * Loads the content of the file.
     *
     * @param callback Result of the operation.
     * @since ARP1.0
     */
    void getContent(IFileDataResultCallback callback);

    /**
     * Sets the content of the file.
     *
     * @param content  Binary content to store in the file.
     * @param callback Result of the operation.
     * @since ARP1.0
     */
    void setContent(byte[] content, IFileDataResultCallback callback);

    /**
     * Determine whether the current file/folder can be written to.
     *
     * @return True if the folder/file is writable, false otherwise.
     * @since ARP1.0
     */
    boolean canWrite();

    /**
     * Determine whether the current file/folder can be read from.
     *
     * @return True if the folder/file is readable, false otherwise.
     * @since ARP1.0
     */
    boolean canRead();

    /**
     * Moves the current file to the givven file destionation, optionally overwriting and creating the path to the
     * new destionation file.
     *
     * @param newFile    Destination path/file for the move.
     * @param createPath True to create the path if it does not already exist.
     * @param callback   Result of the operation.
     * @param overwrite  True to create the path if it does not already exist.
     * @since ARP1.0
     */
    void move(IFile newFile, boolean createPath, IFileResultCallback callback, boolean overwrite);

    /**
     * Extract the path element of the current file.
     *
     * @return Path element of the file.
     * @since ARP1.0
     */
    public IFilePath toPath();

    /**
     * Security attributes of file, if any.
     *
     * @since ARP1.0
     */
    public enum FileSecurity {
        Default, Encrypted
    }
}