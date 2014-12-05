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


public interface IAccelerationListener extends IBaseListener {

    /**
     * Correct data received.
     *
     * @param acceleration
     * @author Carlos Lozano Diez
     * @since ARP1.0
     */
    public void onResult(Acceleration acceleration);

    /**
     * Data received with warning - ie. Needs calibration.
     *
     * @param acceleration
     * @param warning
     * @author Carlos Lozano Diez
     * @since ARP1.0
     */
    public void onWarning(Acceleration acceleration, Warning warning);

    /**
     * No data received - error condition, not authorized or hardware not available. This will be reported once for the
     * listener and subsequently, the listener will be deactivated and removed from the internal list of listeners.
     *
     * @param error
     * @author Carlos Lozano Diez
     * @since ARP1.0
     */
    public void onError(Error error);

    /**
     * Warnings that can be used
     *
     * @since ARP1.0
     */
    public enum Warning {
        NeedsCalibration, Stale, Unknown
    }

    /**
     * Errors that can be used
     *
     * @since ARP1.0
     */
    public enum Error {
        Unauthorized, Unavailable, Unknown
    }
}
