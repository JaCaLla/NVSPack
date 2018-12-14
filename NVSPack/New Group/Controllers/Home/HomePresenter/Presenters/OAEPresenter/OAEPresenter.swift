//
//  ChangeoverPresenter.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit

class OAEPresenter: UIViewController {

     var oAEViewContent: OAEViewContent?

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationManager.shared.notificationCenter.addObserver(self, selector: #selector(onTimeSelectionChanged),
                                                                  name: NSNotification.Name(rawValue:
                                                                    DataManager.NotificationId.updatedTimeSelection),
                                                                  object: nil)

        self.fetchDataset()

    }

    // MARK: - Notification methods
    @objc func onTimeSelectionChanged(notification: NSNotification) {
        self.fetchDataset()
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == R.segue.oaePresenter.oaeAccumulatedContainerSegue.identifier,
           let uwpOAEViewContent = segue.destination as? OAEViewContent {
            oAEViewContent = uwpOAEViewContent
        }
    }

    // MARK: - Private/Internal
    private func fetchDataset() {
        guard let uwpOAEViewContent = self.oAEViewContent else {
            return
        }
        let dataset = DataManager.shared.oAEAccumulatedDataset()
        uwpOAEViewContent.dataset = dataset

    }


}
