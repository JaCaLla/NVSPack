//
//  Dataset.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation
import Charts

struct Dataset {
    // MARK: - Public attributes
    var series:[Serie] = []

    // MARK:- Public helpers
    func maxValue() -> Double? {
        guard !self.series.isEmpty else { return nil }
        return series.map { $0.value }.max() ?? -1.0
    }

    func tag(index: Double) -> String? {
        guard let foundOne = series.first(where: {$0.index == index}) else {
            return nil
        }
        return foundOne.label
    }


}
