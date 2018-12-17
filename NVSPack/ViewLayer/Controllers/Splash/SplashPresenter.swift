//
//  RecipeCompletePVC.swift
//  iMug
//
//  Copyright © 2017 Nestlé S.A. All rights reserved.
//

import UIKit

class SplashPresenter: BaseViewController {

    
    // MARK: - Callbacks
    var onAnimationDoneAction: (() -> Void) = { /* Default empty block */ }

    // MARK: - Private attributes
    private var splashViewContent: SplashViewContent?

    // MARK: - Lifecycle
    override func viewDidLoad() {

        super.viewDidLoad()
    }

    // MARK: - Private/internal

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == R.segue.splashPresenter.splashContainerSegue.identifier,
            let uwpSplashViewContent = segue.destination as? SplashViewContent {
            splashViewContent = uwpSplashViewContent
            splashViewContent?.onAnimationDoneAction = { [weak self] in
                guard let weakSelf = self else { return }
                weakSelf.onAnimationDoneAction()
            }
        }
    }
}
