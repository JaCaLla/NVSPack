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

    func lineActivityDataset() -> Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series:[Serie(label: R.string.localized.lineactivity_effective_uptime(), index: 0, value: 20, color: ColorsNVSPack.LineActivity.effectiveUptime),
                                   Serie(label: R.string.localized.lineactivity_rework(), index: 0, value: 50, color: ColorsNVSPack.LineActivity.rework),
                                   Serie(label: R.string.localized.lineactivity_micro_stoppages(), index: 0, value: 30, color: ColorsNVSPack.LineActivity.microStoppages),
                                   Serie(label: R.string.localized.lineactivity_technical_stoppages(), index: 0, value: 10, color: ColorsNVSPack.LineActivity.technicalStoppages),
                                   Serie(label: R.string.localized.lineactivity_changeover(), index: 0, value: 80, color: ColorsNVSPack.LineActivity.changeover),
                                   Serie(label: R.string.localized.lineactivity_logistical_stoppage(), index: 0, value: 60, color: ColorsNVSPack.LineActivity.logisticalStoppages),
                                   Serie(label: R.string.localized.lineactivity_scheduled_downtime(), index: 0, value: 5, color: ColorsNVSPack.LineActivity.scheduledDowntime)])
        case .currentMonth:
            return Dataset(series:[Serie(label: R.string.localized.lineactivity_effective_uptime(), index: 0, value: 20, color: ColorsNVSPack.LineActivity.effectiveUptime),
                                   Serie(label: R.string.localized.lineactivity_rework(), index: 0, value: 20, color: ColorsNVSPack.LineActivity.rework),
                                   Serie(label: R.string.localized.lineactivity_micro_stoppages(), index: 0, value: 50, color: ColorsNVSPack.LineActivity.microStoppages),
                                   Serie(label: R.string.localized.lineactivity_technical_stoppages(), index: 0, value: 100, color: ColorsNVSPack.LineActivity.technicalStoppages),
                                   Serie(label: R.string.localized.lineactivity_changeover(), index: 0, value: 150, color: ColorsNVSPack.LineActivity.changeover),
                                   Serie(label: R.string.localized.lineactivity_logistical_stoppage(), index: 0, value: 60, color: ColorsNVSPack.LineActivity.logisticalStoppages),
                                   Serie(label: R.string.localized.lineactivity_scheduled_downtime(), index: 0, value: 40, color: ColorsNVSPack.LineActivity.scheduledDowntime)])
        case .lastMonth:
            return Dataset(series:[Serie(label: R.string.localized.lineactivity_effective_uptime(), index: 0, value: 200, color: ColorsNVSPack.LineActivity.effectiveUptime),
                                   Serie(label: R.string.localized.lineactivity_rework(), index: 0, value: 10, color: ColorsNVSPack.LineActivity.rework),
                                   Serie(label: R.string.localized.lineactivity_micro_stoppages(), index: 0, value: 150, color: ColorsNVSPack.LineActivity.microStoppages),
                                   Serie(label: R.string.localized.lineactivity_technical_stoppages(), index: 0, value: 100, color: ColorsNVSPack.LineActivity.technicalStoppages),
                                   Serie(label: R.string.localized.lineactivity_changeover(), index: 0, value: 120, color: ColorsNVSPack.LineActivity.changeover),
                                   Serie(label: R.string.localized.lineactivity_logistical_stoppage(), index: 0, value: 80, color: ColorsNVSPack.LineActivity.logisticalStoppages),
                                   Serie(label: R.string.localized.lineactivity_scheduled_downtime(), index: 0, value: 50, color: ColorsNVSPack.LineActivity.scheduledDowntime)])
        }
    }

    func assetUtilizationDataset() -> Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 65),
                                    Serie(label: "BAD",index: 1.0, value: 35)])
        case .currentMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 80),
                                    Serie(label: "BAD",index: 1.0, value: 20)])
        case .lastMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 95),
                                    Serie(label: "BAD",index: 1.0, value: 5)])
        }
    }

    func oAEAccumulatedDataset() -> Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 85),
                                    Serie(label: "BAD",index: 1.0, value: 15)])
        case .currentMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 99),
                                    Serie(label: "BAD",index: 1.0, value: 1)])
        case .lastMonth:
            return Dataset(series: [Serie(label: "GOOD", index: 0.0, value: 60),
                                    Serie(label: "BAD",index: 1.0, value: 40)])
        }
    }

    func oAEDetailedDataset() ->  Dataset {
        switch self {
        case .thisWeek:
            return Dataset(series: [Serie(label: "Sun", index: 0.0, value: 85),
                                    Serie(label: "Mon",index: 1.0, value: 150),
                                    Serie(label: "Tue",index: 2.0, value: 20),
                                    Serie(label: "Wed",index: 3.0, value: 60),
                                    Serie(label: "Thu",index: 4.0, value: 90),
                                    Serie(label: "Fri",index: 5.0, value: 0),
                                    Serie(label: "Sat",index: 6.0, value: 0)])
        case .currentMonth:
            return Dataset(series: [Serie(label: "Sun", index: 0.0, value: 80),
                                    Serie(label: "Mon",index: 1.0, value: 75),
                                    Serie(label: "Tue",index: 2.0, value: 80),
                                    Serie(label: "Wed",index: 3.0, value: 40),
                                    Serie(label: "Thu",index: 4.0, value: 100),
                                    Serie(label: "Fri",index: 5.0, value: 0),
                                    Serie(label: "Sat",index: 6.0, value: 0)])
        case .lastMonth:
            return Dataset(series: [Serie(label: "Sun", index: 0.0, value: 60),
                                    Serie(label: "Mon",index: 1.0, value: 50),
                                    Serie(label: "Tue",index: 2.0, value: 80),
                                    Serie(label: "Wed",index: 3.0, value: 90),
                                    Serie(label: "Thu",index: 4.0, value: 100),
                                    Serie(label: "Fri",index: 5.0, value: 0),
                                    Serie(label: "Sat",index: 6.0, value: 0)])
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

    func lineActivityDataset() -> Dataset {
        return timeSelector.lineActivityDataset()
    }

    func assetUtilizationDataset() -> Dataset {
        return timeSelector.assetUtilizationDataset()
    }

    func oAEAccumulatedDataset() -> Dataset {
        return timeSelector.oAEAccumulatedDataset()
    }

    func oAEDetailedDataset() -> Dataset {
        return timeSelector.oAEDetailedDataset()
    }
}
