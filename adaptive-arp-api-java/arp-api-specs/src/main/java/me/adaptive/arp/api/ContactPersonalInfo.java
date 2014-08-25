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
 *     * Francisco Javier Martin Bueno
 *             <https://github.com/kechis>
 *             <mailto:kechis@gmail.com>
 *
 * =====================================================================================================================
 */

package me.adaptive.arp.api;

/**
 * Structure representing the personal info data elements of a contact.
 */
public class ContactPersonalInfo {

    /**
     * The name of the Contact
     *
     * @since ARP1.0
     */
    private String name;
    /**
     * The middle name of the Contact if it proceeds
     *
     * @since ARP1.0
     */
    private String middleName;
    /**
     * The last name of the Contact
     *
     * @since ARP1.0
     */
    private String lastName;
    /**
     * The title of the Contact
     *
     * @since ARP1.0
     */
    private Title title;

    /**
     * The Constructor used by the implementation
     *
     * @param name       of the Contact
     * @param middleName of the Contact
     * @param lastName   of the Contact
     * @param title      of the Contact
     * @since ARP1.0
     */
    public ContactPersonalInfo(String name, String middleName, String lastName, Title title) {
        this.name = name;
        this.middleName = middleName;
        this.lastName = lastName;
        this.title = title;
    }

    /**
     * Returns the name of the Contact
     *
     * @return name
     * @since ARP1.0
     */
    public String getName() {
        return name;
    }

    /**
     * Set the name of the Contact
     *
     * @param name
     * @since ARP1.0
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * Returns the middle name of the Contact
     *
     * @return middelName
     * @since ARP1.0
     */
    public String getMiddleName() {
        return middleName;
    }

    /**
     * Set the middle name of the Contact
     *
     * @param middleName
     * @since ARP1.0
     */
    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    /**
     * Returns the last name of the Contact
     *
     * @return lastName
     * @since ARP1.0
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Set the last name of the Contact
     *
     * @param lastName
     * @since ARP1.0
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Returns the title of the Contact
     *
     * @return Title
     * @since ARP1.0
     */
    public Title getTitle() {
        return title;
    }

    /**
     * Set the Title of the Contact
     *
     * @param title
     * @since ARP1.0
     */
    public void setTitle(Title title) {
        this.title = title;
    }

    /**
     * Titles that can be used
     *
     * @since ARP1.0
     */
    public enum Title {
        Mr, Mrs, Ms, Dr
    }
}