//
//  DataManager.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import Foundation

enum TimeSelector: Int {
    case thisWeek
    case currentMonth
    case lastMonth

    func changeoverDataset() -> Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series: [Serie(tag: "TOTAL", index: 0.0, value: 60),
                                    Serie(tag: "P2P",index: 1.0, value: 150),
                                    Serie(tag: "N2N",index: 2.0, value: 100),
                                    Serie(tag: "B2B",index: 3.0, value: 50)])
        case .currentMonth:
            return Dataset(series: [Serie(tag: "TOTAL", index: 0.0, value: 100),
                                    Serie(tag: "P2P",index: 1.0, value: 210),
                                    Serie(tag: "N2N",index: 2.0, value: 70),
                                    Serie(tag: "B2B",index: 3.0, value: 80)])
        case .lastMonth:
            return Dataset(series: [Serie(tag: "TOTAL", index: 0.0, value: 90),
                                    Serie(tag: "P2P",index: 1.0, value: 240),
                                    Serie(tag: "N2N",index: 2.0, value: 30),
                                    Serie(tag: "B2B",index: 3.0, value: 10)])
        }
    }
}

class DataManager {

    static let shared =  DataManager()

    struct NotificationId {
        static let updatedTimeSelection = "DataManager.updatedTimeSelection"
    }

    // MARK: - Private attributes
    private var timeSelector:TimeSelector = .thisWeek

    // MARK: - Public helpers
    func set(timeSelector:TimeSelector) {
        guard self.timeSelector != timeSelector else { return }
        self.timeSelector = timeSelector
        NotificationManager.shared.notify(name:DataManager.NotificationId.updatedTimeSelection, userInfo: nil)
    }

    func changeoverDataset() -> Dataset {
        return timeSelector.changeoverDataset()
    }

}
