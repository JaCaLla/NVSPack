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
            return Dataset(series: [Serie(label: "TOTAL", index: 0.0, value: 60),
                                    Serie(label: "P2P",index: 1.0, value: 150),
                                    Serie(label: "N2N",index: 2.0, value: 100),
                                    Serie(label: "B2B",index: 3.0, value: 50)])
        case .currentMonth:
            return Dataset(series: [Serie(label: "TOTAL", index: 0.0, value: 100),
                                    Serie(label: "P2P",index: 1.0, value: 210),
                                    Serie(label: "N2N",index: 2.0, value: 70),
                                    Serie(label: "B2B",index: 3.0, value: 80)])
        case .lastMonth:
            return Dataset(series: [Serie(label: "TOTAL", index: 0.0, value: 90),
                                    Serie(label: "P2P",index: 1.0, value: 240),
                                    Serie(label: "N2N",index: 2.0, value: 30),
                                    Serie(label: "B2B",index: 3.0, value: 10)])
        }
    }

    func lineyieldDataset() -> Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 90),
                                    Serie(label: "BAD",index: 1.0, value: 10)])
        case .currentMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 95),
                                    Serie(label: "BAD",index: 1.0, value: 2)])
        case .lastMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 2000),
                                    Serie(label: "BAD",index: 1.0, value: 100)])
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

    func lineyieldDataset() -> Dataset {
        return timeSelector.lineyieldDataset()
    }

}
