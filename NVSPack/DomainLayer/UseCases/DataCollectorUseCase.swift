//
//  DataCollectorUseCase.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation

class DataCollectorUseCase {

    func changeoverDataset() -> Dataset {

        return DataManager().changeoverDataset(date: Date())
    }
}
