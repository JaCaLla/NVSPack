//
//  ChangeoverViewContent.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit
import Charts

class LineActivityViewContent: DemoBaseViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var chartView: PieChartView!
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
        lblTitle.text = R.string.localized.lineactivity_title()
        lblTitle.numberOfLines = 1
        lblTitle.font = FontsNVSPack.Lineyield.titleFont
        lblTitle.textColor = ColorsNVSPack.Lineyield.titleFontColor
        lblTitle.textAlignment = .center
        self.setup(pieChartView: chartView)

        chartView.delegate = self

        chartView.drawHoleEnabled = false
        let myAttrString = NSAttributedString(string: "", attributes: [:])
        chartView.centerAttributedText = myAttrString

        chartView.drawEntryLabelsEnabled = false
        chartView.usePercentValuesEnabled = true

        chartView.setExtraOffsets(left: 0, top: 0, right: 100, bottom: 0)

        chartView.animate(xAxisDuration: 1.4, easingOption: .easeOutBack)
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

        let pieChartDataEntries:[PieChartDataEntry] = dataset.series.map {
            let serie = $0
            return PieChartDataEntry(value: serie.value, label: serie.label)//BarChartDataEntry(x:serie.index * spaceForBar, y: serie.value)
        }
  
        let set = PieChartDataSet(values: pieChartDataEntries, label: nil)
        set.drawIconsEnabled = false
        set.sliceSpace = 2
        set.colors = dataset.series.map { return $0.color }

        set.valueLinePart1OffsetPercentage = 0.9
        set.valueLinePart1Length = 0.4
        set.valueLinePart2Length = 0.8
        //set.xValuePosition = .outsideSlice
        set.yValuePosition = .outsideSlice


        let data = PieChartData(dataSet: set)

        let pFormatter = NumberFormatter()
        pFormatter.numberStyle = .percent
        pFormatter.maximumFractionDigits = 1
        pFormatter.multiplier = 1
        pFormatter.percentSymbol = " %"
        data.setValueFormatter(DefaultValueFormatter(formatter: pFormatter))

        data.setValueFont(FontsNVSPack.LineActivity.slideFont)
        data.setValueTextColor(ColorsNVSPack.LineActivity.slideFontColor)

        chartView.data = data
        chartView.highlightValues(nil)
        chartView.animate(xAxisDuration: 0.5, easingOption: .easeOutBack)
    }
}
