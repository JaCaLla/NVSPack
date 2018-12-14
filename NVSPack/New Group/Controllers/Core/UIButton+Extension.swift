//
//  AppStoryboards.swift
//  AppStoryboards
//
//  Created by Gurdeep on 15/12/16.
//  Copyright © 2016 Gurdeep. All rights reserved.
//
import Foundation
import UIKit

extension UIButton {

    func addShadow() {
        self.layer.borderColor = self.backgroundColor?.cgColor
        self.layer.borderWidth = 3.0
        self.layer.shadowColor = UIColor.darkGray.cgColor//self.backgroundColor?.cgColor
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale =  UIScreen.main.scale//[UIScreen mainScreen].scale;
    }
}

extension UIView {

    func dropShadow() {

        self.layer.borderColor = self.backgroundColor?.cgColor
        self.layer.borderWidth = 3.0
        self.layer.shadowColor = UIColor.darkGray.cgColor//self.backgroundColor?.cgColor
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale =  UIScreen.main.scale//[UIScreen mainScreen].scale;

    }

    func dropUpperShadow() {

        self.layer.borderColor = self.backgroundColor?.cgColor
        self.layer.borderWidth = 3.0
        self.layer.shadowColor = UIColor.darkGray.cgColor//self.backgroundColor?.cgColor
        self.layer.shadowRadius = 3.0
        self.layer.shadowOffset = CGSize(width: 0, height: -2)
        self.layer.shadowOpacity = 0.5
        self.layer.masksToBounds = false
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale =  UIScreen.main.scale//[UIScreen mainScreen].scale;

    }

}
