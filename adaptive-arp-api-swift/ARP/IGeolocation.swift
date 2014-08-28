//
//  Auto-generated from: me.adaptive.arp.api.IGeolocation
//
//  IGeolocation.swift
//
//  Created by Carlos Lozano Diez on 28 Aug 2014 23:36:07 GMT.
//  Copyright (c) 2014 Carlos Lozano Diez. All rights reserved.
//

import Foundation

public protocol IGeolocation : IBaseSensor {


     /**
      * Function Declarations
      */
     func removeGeolocationListener(listener : IGeolocationListener)
     func removeGeolocationListeners()
     func addGeolocationListener(listener : IGeolocationListener)

}
