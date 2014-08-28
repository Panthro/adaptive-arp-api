//
//  Auto-generated from: me.adaptive.arp.api.ISecurity
//
//  ISecurity.swift
//
//  Created by Carlos Lozano Diez on 28 Aug 2014 23:36:07 GMT.
//  Copyright (c) 2014 Carlos Lozano Diez. All rights reserved.
//

import Foundation

public protocol ISecurity : IBaseSecurity {


     /**
      * Function Declarations
      */
     func isDeviceModified() -> Bool
     func setSecureKeyValuePairs(keyValues : [SecureKeyPair], publicAccessName : String, callback : ISecureKVResultCallback)
     func getSecureKeyValuePairs(keys : [String], publicAccessName : String, callback : ISecureKVResultCallback)
     func deleteSecureKeyValuePairs(keys : [String], publicAccessName : String, callback : ISecureKVResultCallback)

}
