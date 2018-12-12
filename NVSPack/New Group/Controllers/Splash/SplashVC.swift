//
//  RecipeCompletePVC.swift
//  iMug
//
//  Copyright © 2017 Nestlé S.A. All rights reserved.
//

import UIKit

class SplashVC: BaseViewController {

    // MARK: - Callbacks
    var onAnimationDoneAction: (() -> Void) = { /* Default empty block */ }

    // MARK: - Lifecycle
    override func viewDidLoad() {

        super.viewDidLoad()
        self.setupViewController()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: { [weak self] in
            guard let weakSelf = self else { return }
            weakSelf.onAnimationDoneAction()
        })

    }

    // MARK: - Private/internal
    func setupViewController() {

    }
}
