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


public interface IMessagingCallback extends IBaseCallback {


    /**
     * This method is called on Result
     *
     * @param success true if sent;false otherwise
     * @since ARP1.0
     */
    void onResult(boolean success);

    /**
     * This method is called on Warning
     *
     * @param success true if sent;false otherwise
     * @param warning returned by the platform
     * @since ARP1.0
     */
    void onWarning(boolean success, Warning warning);

    /**
     * This method is called on Error
     *
     * @param error returned by the platform
     * @since ARP1.0
     */
    void onError(Error error);

    /**
     * Warnings that can be used
     *
     * @since ARP1.0
     */
    public enum Warning {
        Unable_To_Sent_All, Unable_to_fetch_attachment
    }

    /**
     * Errors that can be used
     *
     * @since ARP1.0
     */
    public enum Error {
        SIM_Not_Present, Email_Account_Not_Found, Not_Sent,Wrong_Params
    }

}
