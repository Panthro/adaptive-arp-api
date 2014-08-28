//
//  Auto-generated from: me.adaptive.arp.api.ILogging
//
//  ILogging.swift
//
//  Created by Carlos Lozano Diez on 28 Aug 2014 23:36:07 GMT.
//  Copyright (c) 2014 Carlos Lozano Diez. All rights reserved.
//

import Foundation

public protocol ILogging : IBaseUtil {


     /**
      * Function Declarations
      */
     func log(level : ILoggingLogLevel, message : String)
     func log(level : ILoggingLogLevel, category : String, message : String)

}

/**
 * Enumeration Declarations
 */
public enum ILoggingLogLevel {
     case DEBUG, WARN, ERROR, INFO
}

