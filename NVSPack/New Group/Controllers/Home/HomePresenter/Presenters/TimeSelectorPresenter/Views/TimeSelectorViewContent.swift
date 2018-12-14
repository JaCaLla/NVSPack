//
//  ChangeoverViewContent.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit
import Charts

class TimeSelectorViewContent: BaseViewController {

    // MARK: - IBOutlet
     @IBOutlet weak var segTimeSelector: UISegmentedControl!

    // MARK: - Callbacks
    var onSelectedPeriod: (TimeSelector) -> Void = { _ in /* Default empty block*/}

    // MARK: - Lifcecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewContent()
    }

    func setupViewContent() {
        segTimeSelector.removeAllSegments()
        segTimeSelector.insertSegment(withTitle: R.string.localized.time_selector_this_week(), at: 0, animated: false)
        segTimeSelector.insertSegment(withTitle: R.string.localized.time_selector_current_month(), at: 1, animated: false)
        segTimeSelector.insertSegment(withTitle: R.string.localized.time_selector_last_month(), at: 2, animated: false)
        segTimeSelector.selectedSegmentIndex = 0

       
    }
    // MARK: - Actions

    @IBAction func onValueChanged(_ sender: UISegmentedControl) {
        guard let timeSelector = TimeSelector(rawValue: sender.selectedSegmentIndex) else {
            return
        }
        self.onSelectedPeriod(timeSelector)
    }

    // MARK: - Private/Internal
    private func refreshViewContent() {

    }


}
