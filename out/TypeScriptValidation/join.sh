#!/bin/sh
# Join all scripts into a combined JavaScript file. NOTE: you *must* include files in their precise order
# of inheritance and dependency; failing to do this will report errors when creating instances of classes
# from JavaScript and you're going to have a very bad time. As Mc Hammer would say: 'You can't touch dis!'
# unless you *really* know what you're doing.

# ps. This file is AUTO-GENERATED.

tsc --out adaptive-full.js APIBridge.ts IAdaptiveRP.ts IAppRegistry.ts IBaseApplication.ts IBaseCallback.ts IBaseCommerce.ts IBaseCommunication.ts IBaseData.ts IBaseListener.ts IBaseMedia.ts IBaseNotification.ts IBasePIM.ts IBaseReader.ts IBaseSecurity.ts IBaseSensor.ts IBaseSocial.ts IBaseSystem.ts IBaseUI.ts IBaseUtil.ts IAnalytics.ts IGlobalization.ts ILifecycle.ts IManagement.ts IPrinting.ts ISettings.ts IUpdate.ts IContactPhotoResultCallback.ts IContactResultCallback.ts IDatabaseResultCallback.ts IDatabaseTableResultCallback.ts IFileDataLoadResultCallback.ts IFileDataStoreResultCallback.ts IFileListResultCallback.ts IFileResultCallback.ts IMessagingCallback.ts INetworkReachabilityCallback.ts ISecurityResultCallback.ts IServiceResultCallback.ts IAds.ts IStore.ts IWallet.ts IBluetooth.ts INetworkInfo.ts INetworkNaming.ts INetworkReachability.ts INetworkStatus.ts IService.ts ISocket.ts ITelephony.ts ICloud.ts IDataStream.ts IDatabase.ts IFile.ts IFileSystem.ts IInternalStorage.ts IXML.ts IAccelerationListener.ts IButtonListener.ts IGeolocationListener.ts ILifecycleListener.ts INetworkStatusListener.ts IAudio.ts ICamera.ts IImaging.ts IVideo.ts IAlarm.ts INotification.ts INotificationLocal.ts IVibration.ts ICalendar.ts IContact.ts IMail.ts IMessaging.ts IBarcode.ts INFC.ts IOCR.ts IQRCode.ts IOAuth.ts IOpenId.ts ISecurity.ts IAcceleration.ts IAmbientLight.ts IBarometer.ts IGeolocation.ts IGyroscope.ts IMagnetometer.ts IProximity.ts IFacebook.ts IGooglePlus.ts ILinkedIn.ts IRSS.ts ITwitter.ts ICapabilities.ts IDevice.ts IDisplay.ts IOS.ts IRuntime.ts IBrowser.ts IDesktop.ts IMap.ts IUI.ts ICompression.ts IConcurrent.ts ICrypto.ts ILogging.ts ITimer.ts APIBean.ts APIRequest.ts Acceleration.ts Button.ts ContactAddress.ts ContactEmail.ts ContactPersonalInfo.ts ContactPhone.ts ContactProfessionalInfo.ts ContactSocial.ts ContactTag.ts ContactUid.ts ContactWebsite.ts Database.ts DatabaseColumn.ts DatabaseRow.ts DatabaseTable.ts DeviceInfo.ts Email.ts EmailAddress.ts EmailAttachmentData.ts FileDescriptor.ts Geolocation.ts KeyPair.ts Lifecycle.ts Locale.ts OSInfo.ts SecureKeyPair.ts Service.ts ServiceCookie.ts ServiceEndpoint.ts ServiceHeader.ts ServiceRequest.ts ServiceResponse.ts ServiceSession.ts Contact.ts BaseListenerImpl.ts AccelerationListenerImpl.ts ButtonListenerImpl.ts GeolocationListenerImpl.ts LifecycleListenerImpl.ts NetworkStatusListenerImpl.ts BaseCallbackImpl.ts ContactPhotoResultCallbackImpl.ts ContactResultCallbackImpl.ts DatabaseResultCallbackImpl.ts DatabaseTableResultCallbackImpl.ts FileDataLoadResultCallbackImpl.ts FileDataStoreResultCallbackImpl.ts FileListResultCallbackImpl.ts FileResultCallbackImpl.ts MessagingCallbackImpl.ts NetworkReachabilityCallbackImpl.ts SecurityResultCallbackImpl.ts ServiceResultCallbackImpl.ts BaseApplicationBridge.ts BaseCommerceBridge.ts BaseCommunicationBridge.ts BaseDataBridge.ts BaseMediaBridge.ts BaseNotificationBridge.ts BasePIMBridge.ts BaseReaderBridge.ts BaseSecurityBridge.ts BaseSensorBridge.ts BaseSocialBridge.ts BaseSystemBridge.ts BaseUIBridge.ts BaseUtilBridge.ts AnalyticsBridge.ts GlobalizationBridge.ts LifecycleBridge.ts ManagementBridge.ts PrintingBridge.ts SettingsBridge.ts UpdateBridge.ts AdsBridge.ts StoreBridge.ts WalletBridge.ts BluetoothBridge.ts NetworkInfoBridge.ts NetworkNamingBridge.ts NetworkReachabilityBridge.ts NetworkStatusBridge.ts ServiceBridge.ts SocketBridge.ts TelephonyBridge.ts CloudBridge.ts DataStreamBridge.ts DatabaseBridge.ts FileBridge.ts FileSystemBridge.ts InternalStorageBridge.ts XMLBridge.ts AudioBridge.ts CameraBridge.ts ImagingBridge.ts VideoBridge.ts AlarmBridge.ts NotificationBridge.ts NotificationLocalBridge.ts VibrationBridge.ts CalendarBridge.ts ContactBridge.ts MailBridge.ts MessagingBridge.ts BarcodeBridge.ts NFCBridge.ts OCRBridge.ts QRCodeBridge.ts OAuthBridge.ts OpenIdBridge.ts SecurityBridge.ts AccelerationBridge.ts AmbientLightBridge.ts BarometerBridge.ts GeolocationBridge.ts GyroscopeBridge.ts MagnetometerBridge.ts ProximityBridge.ts FacebookBridge.ts GooglePlusBridge.ts LinkedInBridge.ts RSSBridge.ts TwitterBridge.ts CapabilitiesBridge.ts DeviceBridge.ts DisplayBridge.ts OSBridge.ts RuntimeBridge.ts BrowserBridge.ts DesktopBridge.ts MapBridge.ts UIBridge.ts CompressionBridge.ts ConcurrentBridge.ts CryptoBridge.ts LoggingBridge.ts TimerBridge.ts AppRegistryBridge.ts
# APIBridge.ts
# IAdaptiveRP.ts
# IAppRegistry.ts
# IBaseApplication.ts
# IBaseCallback.ts
# IBaseCommerce.ts
# IBaseCommunication.ts
# IBaseData.ts
# IBaseListener.ts
# IBaseMedia.ts
# IBaseNotification.ts
# IBasePIM.ts
# IBaseReader.ts
# IBaseSecurity.ts
# IBaseSensor.ts
# IBaseSocial.ts
# IBaseSystem.ts
# IBaseUI.ts
# IBaseUtil.ts
# IAnalytics.ts
# IGlobalization.ts
# ILifecycle.ts
# IManagement.ts
# IPrinting.ts
# ISettings.ts
# IUpdate.ts
# IContactPhotoResultCallback.ts
# IContactResultCallback.ts
# IDatabaseResultCallback.ts
# IDatabaseTableResultCallback.ts
# IFileDataLoadResultCallback.ts
# IFileDataStoreResultCallback.ts
# IFileListResultCallback.ts
# IFileResultCallback.ts
# IMessagingCallback.ts
# INetworkReachabilityCallback.ts
# ISecurityResultCallback.ts
# IServiceResultCallback.ts
# IAds.ts
# IStore.ts
# IWallet.ts
# IBluetooth.ts
# INetworkInfo.ts
# INetworkNaming.ts
# INetworkReachability.ts
# INetworkStatus.ts
# IService.ts
# ISocket.ts
# ITelephony.ts
# ICloud.ts
# IDataStream.ts
# IDatabase.ts
# IFile.ts
# IFileSystem.ts
# IInternalStorage.ts
# IXML.ts
# IAccelerationListener.ts
# IButtonListener.ts
# IGeolocationListener.ts
# ILifecycleListener.ts
# INetworkStatusListener.ts
# IAudio.ts
# ICamera.ts
# IImaging.ts
# IVideo.ts
# IAlarm.ts
# INotification.ts
# INotificationLocal.ts
# IVibration.ts
# ICalendar.ts
# IContact.ts
# IMail.ts
# IMessaging.ts
# IBarcode.ts
# INFC.ts
# IOCR.ts
# IQRCode.ts
# IOAuth.ts
# IOpenId.ts
# ISecurity.ts
# IAcceleration.ts
# IAmbientLight.ts
# IBarometer.ts
# IGeolocation.ts
# IGyroscope.ts
# IMagnetometer.ts
# IProximity.ts
# IFacebook.ts
# IGooglePlus.ts
# ILinkedIn.ts
# IRSS.ts
# ITwitter.ts
# ICapabilities.ts
# IDevice.ts
# IDisplay.ts
# IOS.ts
# IRuntime.ts
# IBrowser.ts
# IDesktop.ts
# IMap.ts
# IUI.ts
# ICompression.ts
# IConcurrent.ts
# ICrypto.ts
# ILogging.ts
# ITimer.ts
# APIBean.ts
# APIRequest.ts
# Acceleration.ts
# Button.ts
# ContactAddress.ts
# ContactEmail.ts
# ContactPersonalInfo.ts
# ContactPhone.ts
# ContactProfessionalInfo.ts
# ContactSocial.ts
# ContactTag.ts
# ContactUid.ts
# ContactWebsite.ts
# Database.ts
# DatabaseColumn.ts
# DatabaseRow.ts
# DatabaseTable.ts
# DeviceInfo.ts
# Email.ts
# EmailAddress.ts
# EmailAttachmentData.ts
# FileDescriptor.ts
# Geolocation.ts
# KeyPair.ts
# Lifecycle.ts
# Locale.ts
# OSInfo.ts
# SecureKeyPair.ts
# Service.ts
# ServiceCookie.ts
# ServiceEndpoint.ts
# ServiceHeader.ts
# ServiceRequest.ts
# ServiceResponse.ts
# ServiceSession.ts
# Contact.ts
# BaseListenerImpl.ts
# AccelerationListenerImpl.ts
# ButtonListenerImpl.ts
# GeolocationListenerImpl.ts
# LifecycleListenerImpl.ts
# NetworkStatusListenerImpl.ts
# BaseCallbackImpl.ts
# ContactPhotoResultCallbackImpl.ts
# ContactResultCallbackImpl.ts
# DatabaseResultCallbackImpl.ts
# DatabaseTableResultCallbackImpl.ts
# FileDataLoadResultCallbackImpl.ts
# FileDataStoreResultCallbackImpl.ts
# FileListResultCallbackImpl.ts
# FileResultCallbackImpl.ts
# MessagingCallbackImpl.ts
# NetworkReachabilityCallbackImpl.ts
# SecurityResultCallbackImpl.ts
# ServiceResultCallbackImpl.ts
# BaseApplicationBridge.ts
# BaseCommerceBridge.ts
# BaseCommunicationBridge.ts
# BaseDataBridge.ts
# BaseMediaBridge.ts
# BaseNotificationBridge.ts
# BasePIMBridge.ts
# BaseReaderBridge.ts
# BaseSecurityBridge.ts
# BaseSensorBridge.ts
# BaseSocialBridge.ts
# BaseSystemBridge.ts
# BaseUIBridge.ts
# BaseUtilBridge.ts
# AnalyticsBridge.ts
# GlobalizationBridge.ts
# LifecycleBridge.ts
# ManagementBridge.ts
# PrintingBridge.ts
# SettingsBridge.ts
# UpdateBridge.ts
# AdsBridge.ts
# StoreBridge.ts
# WalletBridge.ts
# BluetoothBridge.ts
# NetworkInfoBridge.ts
# NetworkNamingBridge.ts
# NetworkReachabilityBridge.ts
# NetworkStatusBridge.ts
# ServiceBridge.ts
# SocketBridge.ts
# TelephonyBridge.ts
# CloudBridge.ts
# DataStreamBridge.ts
# DatabaseBridge.ts
# FileBridge.ts
# FileSystemBridge.ts
# InternalStorageBridge.ts
# XMLBridge.ts
# AudioBridge.ts
# CameraBridge.ts
# ImagingBridge.ts
# VideoBridge.ts
# AlarmBridge.ts
# NotificationBridge.ts
# NotificationLocalBridge.ts
# VibrationBridge.ts
# CalendarBridge.ts
# ContactBridge.ts
# MailBridge.ts
# MessagingBridge.ts
# BarcodeBridge.ts
# NFCBridge.ts
# OCRBridge.ts
# QRCodeBridge.ts
# OAuthBridge.ts
# OpenIdBridge.ts
# SecurityBridge.ts
# AccelerationBridge.ts
# AmbientLightBridge.ts
# BarometerBridge.ts
# GeolocationBridge.ts
# GyroscopeBridge.ts
# MagnetometerBridge.ts
# ProximityBridge.ts
# FacebookBridge.ts
# GooglePlusBridge.ts
# LinkedInBridge.ts
# RSSBridge.ts
# TwitterBridge.ts
# CapabilitiesBridge.ts
# DeviceBridge.ts
# DisplayBridge.ts
# OSBridge.ts
# RuntimeBridge.ts
# BrowserBridge.ts
# DesktopBridge.ts
# MapBridge.ts
# UIBridge.ts
# CompressionBridge.ts
# ConcurrentBridge.ts
# CryptoBridge.ts
# LoggingBridge.ts
# TimerBridge.ts
# AppRegistryBridge.ts
