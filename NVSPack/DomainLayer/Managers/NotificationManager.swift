//
//  NotificationManager.swift
//  iMug
//
//  Copyright © 2018 Nestlé S.A. All rights reserved.
//

import Foundation


class NotificationManager: NSObject {

    static let shared : NotificationManager = NotificationManager()

    override private init() {
        super.init()
    }

    static let notificationTabBadgeNumber       = "NotificationTabBadgeNumber"
    static let notificationTabBadgeRemove       = "NotificationTabBadgeRemove"
    static let notificationSettingDevices       = "NotificationSettingDevices"
    static let notificationSettingDevicesRemove = "NotificationSettingDevicesRemove"
    static let notificationBackToMain           = "NotificationBackToMain"

    let notificationCenter = NotificationCenter.default

    // MARK: - Observer
    func add(observer:Any, name:String, selector:Selector) {

        notificationCenter.addObserver(observer, selector: selector, name: NSNotification.Name(rawValue:name), object: nil)
    }

    func remove(observer:Any, name:String) {

        notificationCenter.removeObserver(observer, name: NSNotification.Name(rawValue:name), object: nil)
    }

    // MARK: - Generic Notification
    func notify(name:String, userInfo: [AnyHashable : Any]?) {
        notificationCenter.post(name: NSNotification.Name(rawValue: name),object: nil, userInfo: userInfo)
    }
}
