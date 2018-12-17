//
//  ChangeoverPresenter.swift
//  NVSPack
//
//  Created by 08APO0516 on 12/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit

class ChangeoverPresenter: UIViewController {

     var changeoverViewContent: ChangeoverViewContent?

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
        if segue.identifier == R.segue.changeoverPresenter.changeOverContainerSegue.identifier {
            changeoverViewContent = segue.destination as? ChangeoverViewContent
        }
    }

    // MARK: - Private/Internal
    private func fetchDataset() {
        guard let uwpChangeoverViewContent = self.changeoverViewContent else {
            return
        }
        let dataset = DataManager.shared.changeoverDataset()
        uwpChangeoverViewContent.dataset = dataset

    }


}
