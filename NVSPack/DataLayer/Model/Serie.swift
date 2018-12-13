//
//  Serie.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation
import UIKit

struct Serie {
    var label: String = ""
    var index: Double = 0
    var value: Double = 0.0
    var color: UIColor = UIColor.clear

    init(label: String, index:Double, value:Double) {
        self.label = label
        self.index = index
        self.value = value
        self.color = UIColor.clear
    }

    init(label: String, index:Double, value:Double, color: UIColor) {

        self.init(label: label, index: index, value: value)
        self.color = color
    }

    
}
