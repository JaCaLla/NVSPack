//
//  FontsiMug.swift
//  iMug
//
//  Copyright © 2017 Nestlé S.A. All rights reserved.
//

import Foundation
import UIKit

struct FontsNVSPack {

    // MARK: - OAEAccumulated
    struct OAEDetailed {
        static let titleFont   = TextStyle.h12Custom.font
        static let holeFont    = TextStyle.h18Custom.font
    }

    // MARK: - OAEAccumulated
    struct OAEAccumulated {
        static let titleFont    = TextStyle.h24Custom.font
        static let holeFont    = TextStyle.h18Custom.font
    }

    // MARK: - LineYield
    struct AssetUtilization {
        static let titleFont    = TextStyle.h24Custom.font
        static let holeFont    = TextStyle.h40Custom.font
    }

    // MARK: - LineActivity
    struct LineActivity {
        static let titleFont    = TextStyle.h24Custom.font
        static let slideFont    = TextStyle.h12Custom.font
    }

    // MARK: - LineYield
    struct Lineyield {
        static let titleFont    = TextStyle.h24Custom.font
        static let holeFont    = TextStyle.h20Custom.font
    }

    // MARK: - ChangeOverAverage
    struct ChangeOverAverage {
        static let titleFont    = TextStyle.h24Custom.font
        static let rightAxis    = TextStyle.h12Custom.font
        static let xAxis        = TextStyle.h12Custom.font
    }
}

enum TextStyle {
    case custom (size: CGFloat)
}

enum TextStyleSize:Int {
    case height40 = 40
    case height38 = 38
    case height35 = 35
    case height26 = 26
    case height24 = 24
    case height20 = 20
    case height18 = 18
    case height17 = 17
    case height16 = 16
    case height15 = 15
    case height14 = 14
    case height13 = 13
    case height12 = 12
    case height11 = 11
    case height10 = 10
    case height7 = 7
}

extension TextStyle {

    static let h40Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height40.rawValue))
    static let h38Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height38.rawValue))
    static let h35Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height35.rawValue))
    static let h26Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height26.rawValue))
    static let h24Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height24.rawValue))
    static let h20Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height20.rawValue))
    static let h18Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height18.rawValue))
    static let h17Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height17.rawValue))
    static let h16Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height16.rawValue))
    static let h15Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height15.rawValue))
    static let h14Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height14.rawValue))
    static let h13Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height13.rawValue))
    static let h12Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height12.rawValue))
    static let h11Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height11.rawValue))
    static let h10Custom = TextStyle.custom(size: CGFloat(TextStyleSize.height10.rawValue))
    static let h7Custom  = TextStyle.custom(size: CGFloat(TextStyleSize.height7.rawValue))

    var font : UIFont {

        let tmpFont : UIFont?
        switch self {
        case let .custom(size):
            tmpFont = UIFont(name: "Calibri", size: size)
        }

        guard let fontCustom = tmpFont else {
            return UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.bold)
        }

        return fontCustom
    }
}
