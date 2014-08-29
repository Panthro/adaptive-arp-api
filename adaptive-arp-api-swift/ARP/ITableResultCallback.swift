//
//  Auto-generated from: me.adaptive.arp.api.ITableResultCallback
//
//  ITableResultCallback.swift
//
//  Released under Apache Public License v2.0
//
//  -----------| aut viam inveniam aut faciam |-----------
//   Copyright (c) 2014 Carlos Lozano Diez ta Adaptive.me
//   All rights reserved.                 www.adaptive.me
//  ------------------------------------------------------

import Foundation

public protocol ITableResultCallback : IBaseCallback {


     /**
      * Function Declarations
      */
     func onError(error : ITableResultCallbackError)
     func onResult(table : Table)
     func onWarning(table : Table, warning : ITableResultCallbackWarning)

}

/**
 * Enumeration Declarations
 */
public enum ITableResultCallbackError {
     case NoSpace, ReadOnlyTable, SqlException
}

public enum ITableResultCallbackWarning {
     case TableExists, TableLocked, NoResults
}
