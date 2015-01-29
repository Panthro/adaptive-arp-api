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
 *     * Ferran Vila Conesa
 *                 <http://github.com/fnva>
 *                 <http://twitter.com/ferran_vila>
 *                 <mailto:ferran.vila.conesa@gmail.com>
 *
 *     * Aryslan
 *                 <http://github.com/Aryslan>
 *                 <http://twitter.com/Aryslan>
 *                 <mailto:ddbc@gft.com>
 *
 *     * Francisco Javier Martin Bueno
 *                 <https://github.com/kechis>
 *                 <mailto:kechis@gmail.com>
 *
 * =====================================================================================================================
 */

package me.adaptive.arp.api;

/**
 * Structure representing the column specification of a data column.
 *
 * @author Ferran Vila Conesa
 * @since ARP 2.0
 */
public class DatabaseColumn extends APIBean {

    /**
     * Name of the column
     */
    private String name;

    /**
     * Default constructor
     *
     * @since ARP 2.0
     */
    public DatabaseColumn() {
    }

    /**
     * Constructor with fields
     *
     * @param name Name of the column
     * @since ARP 2.0
     */
    public DatabaseColumn(String name) {
        this.name = name;
    }

    /**
     * Returns the name of the column.
     *
     * @return The name of the column.
     * @since ARP 2.0
     */
    public String getName() {
        return name;
    }

    /**
     * Sets the name of the column.
     *
     * @param name The name of the column.
     * @since ARP 2.0
     */
    public void setName(String name) {
        this.name = name;
    }
}
