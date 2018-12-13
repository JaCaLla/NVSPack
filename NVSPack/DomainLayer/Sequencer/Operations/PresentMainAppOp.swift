//
//  PresentMainAppOp.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation
import UIKit

class PresentMainAppOperation: ConcurrentOperation {

    override init() {
        super.init()
    }
    
    override func main() {
        DispatchQueue.main.async {

            let homePresenter = HomePresenter.instantiate(fromAppStoryboard: .home)
            homePresenter.modalPresentationStyle = .custom
            homePresenter.modalTransitionStyle = .crossDissolve
/*
            let appDelegate  = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window!.rootViewController = homePresenter
            //appDelegate.window?.makeKeyAndVisible()
*/
            if let topController = UIApplication.topViewController() {
                topController.present(homePresenter, animated: true, completion: { [weak self] in
                    guard let weakSelf = self else { return }
                    weakSelf.state = .finished
                } )
            }
        }
    }
}

