//
//  StartUpAppSequencer.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation
import UIKit

class  StartUpAppSequencer {

    static let shared =  StartUpAppSequencer()

    fileprivate let operationQueue = OperationQueue()

    private init() { /*This prevents others from using the default '()' initializer for this class. */ }

    func start() {

        let presentSplashOperation = PresentSplashOperation()
        let presentMainAppOperation = PresentMainAppOperation()

        let operations = [presentSplashOperation,
                          presentMainAppOperation]

        // Add operation dependencies
        presentMainAppOperation.addDependency(presentSplashOperation)

        operationQueue.addOperations(operations, waitUntilFinished: false)
    }
}

