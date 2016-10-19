//
//  UIColor+extension.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/19.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//  这个是网上找的方法，好用

import Foundation
import UIKit

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
