//
//  ChangeoverViewContent.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit
import Charts

class ChangeoverViewContent: DemoBaseViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var chartView: HorizontalBarChartView!
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
        lblTitle.text = R.string.localized.changeover_title()
        lblTitle.numberOfLines = 1
        lblTitle.font = FontsNVSPack.ChangeOverAverage.titleFont
        lblTitle.textColor = ColorsNVSPack.ChangeOverAverage.titleFontColor
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
        let leftAxis = chartView.leftAxis
        leftAxis.labelFont = .systemFont(ofSize: 10)
        leftAxis.drawAxisLineEnabled = false//true
        leftAxis.drawGridLinesEnabled = false//true
        leftAxis.labelTextColor = ColorsNVSPack.ChangeOverAverage.leftAxis
        leftAxis.axisMinimum = 0

        // Bottom axis
        let rightAxis = chartView.rightAxis
        rightAxis.enabled = true
        rightAxis.labelFont = FontsNVSPack.ChangeOverAverage.rightAxis
        rightAxis.drawAxisLineEnabled = false//true
        rightAxis.labelTextColor = ColorsNVSPack.ChangeOverAverage.rightAxis
        rightAxis.axisMinimum = 0

        chartView.legend.enabled = false
        chartView.fitBars = true


        chartView.animate(yAxisDuration: 2.5)

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
        barChartDataSet.colors = [ColorsNVSPack.ChangeOverAverage.dataset]
        let data = BarChartData(dataSet: barChartDataSet)

        data.barWidth = spaceForBar * 0.5

        chartView.data = data
    }
}

// MARK: - IAxisValueFormatter
extension ChangeoverViewContent: IAxisValueFormatter {

    func stringForValue(_ value: Double,
                        axis: AxisBase?) -> String {
        guard let uwpDataset = self.dataset,
             let tag = uwpDataset.tag(index: value/spaceForBar )else {
            return ""
        }
        return tag
    }
}
