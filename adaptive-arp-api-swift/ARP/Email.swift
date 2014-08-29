//
//  Auto-generated from: me.adaptive.arp.api.Email
//
//  Email.swift
//
//  Released under Apache Public License v2.0
//
//  -----------| aut viam inveniam aut faciam |-----------
//   Copyright (c) 2014 Carlos Lozano Diez ta Adaptive.me
//   All rights reserved.                 www.adaptive.me
//  ------------------------------------------------------

import Foundation

public class Email {

     /**
      * Field Declarations
      */
     var toRecipients : [EmailAddress]?
     var ccRecipients : [EmailAddress]?
     var bccRecipients : [EmailAddress]?
     var attachmentData : [AttachmentData]?
     var messageBody : String
     var messageBodyMimeType : String
     var subject : String

     /**
      * Initialization
      */
     public convenience init(toRecipients : [EmailAddress], subject : String, messageBody : String) {
          self.init()
          self.toRecipients = toRecipients
          self.subject = subject
          self.messageBody = messageBody
     }

     public convenience init(toRecipients : [EmailAddress], ccRecipients : [EmailAddress], bccRecipients : [EmailAddress], attachmentData : [AttachmentData], messageBody : String, messageBodyMimeType : String, subject : String) {
          self.init()
          self.toRecipients = toRecipients
          self.ccRecipients = ccRecipients
          self.bccRecipients = bccRecipients
          self.attachmentData = attachmentData
          self.messageBody = messageBody
          self.messageBodyMimeType = messageBodyMimeType
          self.subject = subject
     }

     public init() {
          self.toRecipients = nil
          self.ccRecipients = nil
          self.bccRecipients = nil
          self.attachmentData = nil
          self.messageBody = ""
          self.messageBodyMimeType = ""
          self.subject = ""
     }


     /**
      * Function Declarations
      */
     public func getToRecipients() -> [EmailAddress] {
          return self.toRecipients!
     }

     public func setToRecipients(toRecipients : [EmailAddress]) {
          self.toRecipients = toRecipients
     }

     public func getCcRecipients() -> [EmailAddress] {
          return self.ccRecipients!
     }

     public func setCcRecipients(ccRecipients : [EmailAddress]) {
          self.ccRecipients = ccRecipients
     }

     public func getBccRecipients() -> [EmailAddress] {
          return self.bccRecipients!
     }

     public func setBccRecipients(bccRecipients : [EmailAddress]) {
          self.bccRecipients = bccRecipients
     }

     public func getAttachmentData() -> [AttachmentData] {
          return self.attachmentData!
     }

     public func setAttachmentData(attachmentData : [AttachmentData]) {
          self.attachmentData = attachmentData
     }

     public func getMessageBody() -> String {
          return self.messageBody
     }

     public func setMessageBody(messageBody : String) {
          self.messageBody = messageBody
     }

     public func getMessageBodyMimeType() -> String {
          return self.messageBodyMimeType
     }

     public func setMessageBodyMimeType(messageBodyMimeType : String) {
          self.messageBodyMimeType = messageBodyMimeType
     }

     public func getSubject() -> String {
          return self.subject
     }

     public func setSubject(subject : String) {
          self.subject = subject
     }


}