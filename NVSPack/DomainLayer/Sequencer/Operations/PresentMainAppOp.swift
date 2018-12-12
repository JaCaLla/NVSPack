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

            let appDelegate  = UIApplication.shared.delegate as! AppDelegate
            appDelegate.window!.rootViewController = HomePresenter.instantiate(fromAppStoryboard: .home)
            //appDelegate.window?.makeKeyAndVisible()

            self.state = .finished
        }
    }
}

