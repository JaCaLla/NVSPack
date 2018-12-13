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

    // MARK: - Public attributes
    var dataset: Dataset? {
        didSet {
            self.refreshViewContent()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "Horizontal Bar Char"
        self.options = [.toggleValues,
                        .toggleIcons,
                        .toggleHighlight,
                        .animateX,
                        .animateY,
                        .animateXY,
                        .saveToGallery,
                        .togglePinchZoom,
                        .toggleAutoScaleMinMax,
                        .toggleData,
                        .toggleBarBorders]

        self.setup(barLineChartView: chartView)

        chartView.delegate = self

        chartView.xAxis.valueFormatter = self;

        chartView.drawBarShadowEnabled = false
        chartView.drawValueAboveBarEnabled = true

        chartView.maxVisibleCount = 60

        let xAxis = chartView.xAxis
        xAxis.labelPosition = .bottom
        xAxis.labelFont = .systemFont(ofSize: 10)
        xAxis.drawAxisLineEnabled = true
        xAxis.granularity = 10

        let leftAxis = chartView.leftAxis
        leftAxis.labelFont = .systemFont(ofSize: 10)
        leftAxis.drawAxisLineEnabled = true
        leftAxis.drawGridLinesEnabled = true
        leftAxis.axisMinimum = 0

        let rightAxis = chartView.rightAxis
        rightAxis.enabled = true
        rightAxis.labelFont = .systemFont(ofSize: 10)
        rightAxis.drawAxisLineEnabled = true
        rightAxis.axisMinimum = 0

        let l = chartView.legend
        l.horizontalAlignment = .left
        l.verticalAlignment = .bottom
        l.orientation = .horizontal
        l.drawInside = false
        l.form = .square
        l.formSize = 8
        l.font = UIFont(name: "HelveticaNeue-Light", size: 11)!
        l.xEntrySpace = 4
        //        chartView.legend = l

        chartView.fitBars = true


        chartView.animate(yAxisDuration: 2.5)

       // self.updateChartData()
    }
/*
    override func updateChartData(dataset: Dataset) {
        if self.shouldHideData {
            chartView.data = nil
            return
        }

        //self.setDataCount(Int(sliderX.value) + 1, range: UInt32(sliderY.value))
        self.setDataCount(4, range: 300, dataset:dataset)
    }*/




/*
    override func optionTapped(_ option: Option) {
        super.handleOption(option, forChartView: chartView)
    }
*/
    // MARK: - Actions




    // MARK: - Private/Internal
    private func refreshViewContent() {
        guard let uwpDataset = self.dataset else {
            chartView.data = nil
            return
        }

        //self.setDataCount(Int(sliderX.value) + 1, range: UInt32(sliderY.value))
        self.setDataCount(4, range: 300, dataset:uwpDataset)
    }

    var spaceForBar = 10.0

    func setDataCount(_ count: Int, range: UInt32, dataset:Dataset) {

        let barChartDataEntries:[BarChartDataEntry] = dataset.series.map {
            let serie = $0
            return BarChartDataEntry(x:serie.index * spaceForBar, y: serie.value)
        }

        let set1 = BarChartDataSet(values: barChartDataEntries, label: "DataSet")
        set1.drawIconsEnabled = false

        let data = BarChartData(dataSet: set1)
        data.setValueFont(UIFont(name:"HelveticaNeue-Light", size:10)!)
        data.barWidth = spaceForBar * 0.5

        chartView.data = data
    }
}

extension ChangeoverViewContent: IAxisValueFormatter {
    // MARK: - IAxisValueFormatter

    func stringForValue(_ value: Double,
                        axis: AxisBase?) -> String {
        guard let uwpDataset = self.dataset,
             let tag = uwpDataset.tag(index: value/spaceForBar )else {
            return ""
        }
        return tag
    }
}
