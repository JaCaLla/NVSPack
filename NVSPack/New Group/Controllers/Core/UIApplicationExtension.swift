//
//  UIApplicationExtension.swift
//  Barista
//
//  Created by Alejandro Fornés Gandía on 20/03/2017.
//  Copyright © 2017 08APO0516ja. All rights reserved.
//

import UIKit

extension UIApplication {
    class func topViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return topViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController ,
            let selected = tabController.selectedViewController {
            return topViewController(controller: selected)
        }
        if let presented = controller?.presentedViewController {
            return topViewController(controller: presented)
        }
        return controller
    }

    func fvc_open(_ paramUrl: URL, completion: ((Bool) -> Void)? = nil) {
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(paramUrl) {
                completion?($0)
            }
        } else {
            let result = UIApplication.shared.openURL(paramUrl)
            completion?(result)
        }
    }
}
