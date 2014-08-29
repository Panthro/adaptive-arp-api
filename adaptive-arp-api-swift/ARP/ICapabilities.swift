//
//  Auto-generated from: me.adaptive.arp.api.ICapabilities
//
//  ICapabilities.swift
//
//  Released under Apache Public License v2.0
//
//  -----------| aut viam inveniam aut faciam |-----------
//   Copyright (c) 2014 Carlos Lozano Diez ta Adaptive.me
//   All rights reserved.                 www.adaptive.me
//  ------------------------------------------------------

import Foundation

public protocol ICapabilities : IBaseSystem {


     /**
      * Function Declarations
      */
     func hasSensorSupport(type : ICapabilitiesSensor) -> Bool
     func hasCommunicationSupport(type : ICapabilitiesCommunication) -> Bool
     func hasDataSupport(type : ICapabilitiesData) -> Bool
     func hasMediaSupport(type : ICapabilitiesMedia) -> Bool
     func hasNetSupport(type : ICapabilitiesNet) -> Bool
     func hasNotificationSupport(type : ICapabilitiesNotification) -> Bool
     func hasButtonSupport(type : ICapabilitiesButton) -> Bool

}

/**
 * Enumeration Declarations
 */
public enum ICapabilitiesSensor {
     case Accelerometer, AmbientLight, Barometer, Geolocation, Gyroscope, Magnetometer, Proximity
}

public enum ICapabilitiesCommunication {
     case Calendar, Contact, Mail, Messaging, Telephony
}

public enum ICapabilitiesData {
     case Database, File, Cloud
}

public enum ICapabilitiesMedia {
     case Audio_Playback, Audio_Recording, Camera, Video_Playback, Video_Recording
}

public enum ICapabilitiesNet {
     case GSM, GPRS, HSDPA, LTE, WIFI, Ethernet
}

public enum ICapabilitiesNotification {
     case Alarm, LocalNotification, RemoteNotification, Vibration
}

public enum ICapabilitiesButton {
     case HomeButton, BackButton, OptionButton
}
