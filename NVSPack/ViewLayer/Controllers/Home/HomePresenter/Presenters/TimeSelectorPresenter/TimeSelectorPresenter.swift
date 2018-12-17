//
//  ChangeoverPresenter.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit

class TimeSelectorPresenter: UIViewController {

    // MARK: - Callbacks
    var onSelectedPeriod: (TimeSelector) -> Void = { _ in /* Default empty block*/}

    // MARK: - Private attributes
    private var timeSelectorViewContent: TimeSelectorViewContent?

    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.dropShadow()

        // Do any additional setup after loading the view.
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == R.segue.timeSelectorPresenter.timeSelectorContainerSegue.identifier,
            let timeSelectorViewContent = segue.destination as? TimeSelectorViewContent {
            timeSelectorViewContent.onSelectedPeriod = { timeSelector in
                DataManager.shared.set(timeSelector: timeSelector)
            }
        }
    }

    // MARK: - Private/Internal

}
