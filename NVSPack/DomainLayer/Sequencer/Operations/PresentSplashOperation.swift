//
//  PresentSplashOperation.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation
import UIKit

class PresentSplashOperation: ConcurrentOperation {

    override init() {
        super.init()
    }

    override func main() {
        DispatchQueue.main.async {
            let appDelegate  = UIApplication.shared.delegate as! AppDelegate
            let splashVC = SplashVC.instantiate(fromAppStoryboard: .splash)
            splashVC.onAnimationDoneAction = { [weak self] in

                guard let weakSelf = self else { return }
                weakSelf.state = .finished
            }

            if let uwpRootViewController = appDelegate.window?.rootViewController {
                uwpRootViewController.present(splashVC, animated: false, completion: nil)
            } else {
                appDelegate.window?.rootViewController = splashVC
            }
        }
    }
}
