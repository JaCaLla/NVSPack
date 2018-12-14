//
//  ChangeoverViewContent.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit
import Charts

class OAEDetailedViewContent: DemoBaseViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var chartView: BarChartView!
    @IBOutlet weak var lblTitle: UILabel!


    // MARK: - Public attributes
    var dataset: Dataset? {
        didSet {
            self.refreshViewContent()
        }
    }

    // MARK: - Private attributes
    fileprivate var spaceForBar = 10.0

    // MARK: - Lifcecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewContent()
    }

    func setupViewContent() {

        lblTitle.text = R.string.localized.oaedetailed_title()
        lblTitle.numberOfLines = 1
        lblTitle.font = FontsNVSPack.OAEDetailed.titleFont
        lblTitle.textColor = ColorsNVSPack.OAEDetailed.titleFontColor
        lblTitle.textAlignment = .center
        self.setup(barLineChartView: chartView)

        chartView.xAxis.valueFormatter = self //extension ChangeoverViewContent: IAxisValueFormatter

        // Left axis
        let xAxis = chartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.labelFont = FontsNVSPack.ChangeOverAverage.xAxis
        xAxis.labelTextColor = ColorsNVSPack.ChangeOverAverage.xAxis
        xAxis.drawAxisLineEnabled = true
        xAxis.drawGridLinesEnabled = false
        xAxis.granularity = 10

        // Top axis
        let rightAxis = chartView.rightAxis
        rightAxis.labelFont = .systemFont(ofSize: 10)
        rightAxis.drawAxisLineEnabled = false//true
        rightAxis.drawGridLinesEnabled = false//true
        rightAxis.labelTextColor = ColorsNVSPack.ChangeOverAverage.leftAxis
        rightAxis.axisMinimum = 0

        chartView.legend.enabled = false
        chartView.fitBars = true


        chartView.animate(yAxisDuration: 0.5)
    }

    // MARK: - Actions

    // MARK: - Private/Internal

    private func refreshViewContent() {
        guard let uwpDataset = self.dataset else {
            chartView.data = nil
            return
        }

        self.setDataCount(dataset:uwpDataset)
    }

    func setDataCount( dataset:Dataset) {

        let barChartDataEntries:[BarChartDataEntry] = dataset.series.map {
            let serie = $0
            return BarChartDataEntry(x:serie.index * spaceForBar, y: serie.value)
        }

        let barChartDataSet = BarChartDataSet(values: barChartDataEntries, label: "DataSet")
        barChartDataSet.drawIconsEnabled = false
        barChartDataSet.drawValuesEnabled = false
        barChartDataSet.colors = dataset.series.map {
            let serie = $0
            if serie.value < 30 {
                return ColorsNVSPack.OAEDetailed.datasetLow
            } else if serie.value > 70 {
                return ColorsNVSPack.OAEDetailed.datasetHigh
            } else {
                return ColorsNVSPack.OAEDetailed.datasetMid
            }
        }
        let data = BarChartData(dataSet: barChartDataSet)

        data.barWidth = spaceForBar * 0.5

        chartView.data = data
        chartView.animate(yAxisDuration: 0.5)


    }
}

// MARK: - IAxisValueFormatter
extension OAEDetailedViewContent: IAxisValueFormatter {

    func stringForValue(_ value: Double,
                        axis: AxisBase?) -> String {
        guard let uwpDataset = self.dataset,
            let tag = uwpDataset.tag(index: value/spaceForBar )else {
                return ""
        }
        return tag
    }
}
