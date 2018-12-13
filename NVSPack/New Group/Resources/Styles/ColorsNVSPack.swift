//
//  ColorsNVSPack.swift
//  iMug
//
//  Copyright © 2017 Nestlé S.A. All rights reserved.
//

import Foundation
import UIKit.UIColor

// MARK: - App Colors
struct ColorsNVSPack {

    struct Interface {
        static let ColorPink            = #colorLiteral(red: 0.8470588235, green: 0.3607843137, blue: 0.4470588235, alpha: 1)//D85C72
        static let ColorYellow          = #colorLiteral(red: 0.9333333333, green: 0.862745098, blue: 0, alpha: 1)//EEDC00
        static let ColorLightBlue       = #colorLiteral(red: 0.3882352941, green: 0.8156862745, blue: 0.8745098039, alpha: 1)//63D0DF
        static let ColorDarkBlue        = #colorLiteral(red: 0.231372549, green: 0.3490196078, blue: 0.5960784314, alpha: 1)//3B5998
        static let colorGold            = #colorLiteral(red: 0.862745098, green: 0.7725490196, blue: 0.3333333333, alpha: 1)//DCC555
        static let ColorBrown           = #colorLiteral(red: 0.8392156863, green: 0.7294117647, blue: 0.5490196078, alpha: 1)//D6BA8C
        static let ColorLightBrown      = #colorLiteral(red: 0.8720434308, green: 0.7751034498, blue: 0.617057085, alpha: 0.7021071743)//d5b98b
        static let ColorLightClearBrown = #colorLiteral(red: 0.8720434308, green: 0.7751034498, blue: 0.617057085, alpha: 0.3)//D6BA8C #colorLiteral(red: 0.8720434308, green: 0.7751034498, blue: 0.617057085, alpha: 0.3)

        static let ColorLightGrey       = #colorLiteral(red: 0.8470588235, green: 0.8196078431, blue: 0.7921568627, alpha: 1)//D8D1CA
        static let ColorMediumGrey      = #colorLiteral(red: 0.9182453156, green: 0.9182668328, blue: 0.9182552695, alpha: 1)//E5E5E5

        static let ColorWhiteSemi       = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.5)//FFFFFF
        static let ColorGreySemi40     =  #colorLiteral(red: 0.9182453156, green: 0.9182668328, blue: 0.9182552695, alpha: 0.4021401849)//E5E5E5
        static let ColorBlack           = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)//000000
        static let ColorClear           = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)//000000
        static let ColorRed             = #colorLiteral(red: 1, green: 0, blue: 0, alpha: 1)//FF0000


        static let ColorBlue            = #colorLiteral(red: 0.4039215686, green: 0.6549019608, blue: 0.8549019608, alpha: 1)//67A7DA
        static let ColorGrey            = #colorLiteral(red: 0.5647058824, green: 0.5647058824, blue: 0.5647058824, alpha: 1)//909090
        static let ColorWhite           = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)//FFFFFF
        static let ColorGreen           = #colorLiteral(red: 0.3725490196, green: 0.6431372549, blue: 0.3411764706, alpha: 1)//64BA04
    }


    struct Lineyield {
        static let titleFontColor    = Interface.ColorGrey
        static let goodSerie         = Interface.ColorBlue
        static let badSerie         = Interface.ColorClear
        static let holeFontColor    = Interface.ColorWhite
        static let hole             = Interface.ColorGreen
    }

    struct ChangeOverAverage {
        static let titleFontColor    = Interface.ColorGrey
        static let xAxis    = Interface.ColorGrey
        static let leftAxis    = Interface.ColorClear
        static let rightAxis    = Interface.ColorGrey
        static let dataset  = Interface.ColorBlue
    }

}

extension UIColor {
    convenience init(rgbaValue: UInt32) {
        let red   = CGFloat((rgbaValue >> 24) & 0xff) / 255.0
        let green = CGFloat((rgbaValue >> 16) & 0xff) / 255.0
        let blue  = CGFloat((rgbaValue >>  8) & 0xff) / 255.0
        let alpha = CGFloat((rgbaValue      ) & 0xff) / 255.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}
