//
//  Auto-generated from: me.adaptive.arp.api.IService
//
//  IService.swift
//
//  Released under Apache Public License v2.0
//
//  -----------| aut viam inveniam aut faciam |-----------
//   Copyright (c) 2014 Carlos Lozano Diez ta Adaptive.me
//   All rights reserved.                 www.adaptive.me
//  ------------------------------------------------------

import Foundation

public protocol IService : IBaseCommunication {


     /**
      * Function Declarations
      */
     func isRegistered(service : Service) -> Bool
     func isRegistered(serviceName : String) -> Bool
     func registerService(service : Service)
     func unregisterService(service : Service)
     func unregisterServices()
     func InvokeService(serviceRequest : ServiceRequest, service : Service, callback : IServiceResultCallback)
     func getService(serviceName : String) -> Service

}