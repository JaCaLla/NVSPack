//
//  SplashConentView.swift
//  NVSPack
//
//  Created by 08APO0516 on 13/12/2018.
//  Copyright © 2018 jca. All rights reserved.
//

import UIKit

class SplashViewContent: UIViewController {

    // MARK :- IBOutlet
    @IBOutlet weak var imgNovartisLogo: UIImageView!

    // MARK: - Callbacks
    var onAnimationDoneAction: (() -> Void) = { /* Default empty block */ }

    // MARK: - Lifecycle
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.doAnimation()
    }

    func doAnimation() {

        imgNovartisLogo.contentMode = .scaleAspectFit
        imgNovartisLogo.alpha = 1

        let deadlineTime = DispatchTime.now()
        DispatchQueue.main.asyncAfter(deadline: deadlineTime) { [weak self] in
            guard let weakSelf = self else { return }
            weakSelf.imgNovartisLogo.transform = CGAffineTransform.identity
            weakSelf.imgNovartisLogo.alpha = 1
            UIView.animate(withDuration: 0.6, delay: 0, options: .curveEaseOut, animations: { [weak self] in
                guard let weakSelf = self else { return }
                weakSelf.imgNovartisLogo.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
                weakSelf.imgNovartisLogo.alpha = 1
            }, completion: { [weak self]  _ in
                guard let weakSelf = self else { return }
                UIView.animate(withDuration: 0.3 , delay: 0, options: .curveEaseOut, animations: {
                    weakSelf.imgNovartisLogo.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
                    weakSelf.imgNovartisLogo.alpha = 0
                }, completion: { [weak self] _ in
                    guard let weakSelf = self else { return }
                    weakSelf.onAnimationDoneAction()
                })
            })
        }
    }


}
