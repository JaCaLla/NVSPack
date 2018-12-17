//
//  ChangeoverViewContent.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit
import Charts

class LineyieldViewContent: DemoBaseViewController {

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
        lblTitle.text = R.string.localized.lineyield_title()
        lblTitle.numberOfLines = 1
        lblTitle.font = FontsNVSPack.Lineyield.titleFont
        lblTitle.textColor = ColorsNVSPack.Lineyield.titleFontColor
        lblTitle.textAlignment = .center
        self.setup(pieChartView: chartView)

        chartView.delegate = self


        chartView.legend.enabled = false
        chartView.holeColor = ColorsNVSPack.Lineyield.hole

        let paragraph = NSMutableParagraphStyle()
        paragraph.alignment = .center
        let myAttribute = [ NSAttributedStringKey.font: FontsNVSPack.Lineyield.holeFont,
                            NSAttributedStringKey.foregroundColor: ColorsNVSPack.Lineyield.holeFontColor,
                            NSAttributedStringKey.paragraphStyle: paragraph]
        let myAttrString = NSAttributedString(string: "98.73%\n513,447,000\npacks", attributes: myAttribute)
        chartView.centerAttributedText = myAttrString

        chartView.spin(duration: 0.1,
                       fromAngle: chartView.rotationAngle,
                       toAngle: chartView.rotationAngle - 90,
                       easingOption: .easeInCubic)
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
        set.colors = [ColorsNVSPack.Lineyield.goodSerie,ColorsNVSPack.Lineyield.badSerie]


        let data = PieChartData(dataSet: set)

        chartView.data = data
        chartView.highlightValues(nil)
        if let uwpData = chartView.data {
            uwpData.setValueTextColor(UIColor.clear)
        }
        chartView.animate(yAxisDuration: 0.5)
    }
}

