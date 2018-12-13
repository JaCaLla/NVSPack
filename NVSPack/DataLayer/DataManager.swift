//
//  DataManager.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation

class DataManager {

    func changeoverDataset(date:Date) -> Dataset {

       return Dataset(series: [Serie(tag: "TOTAL", index: 0.0, value: 90),
                         Serie(tag: "P2P",index: 1.0, value: 240),
                         Serie(tag: "N2N",index: 2.0, value: 30),
                         Serie(tag: "B2B",index: 3.0, value: 10)])

    }

}
