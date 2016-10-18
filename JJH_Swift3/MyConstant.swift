//
//  MyConstant.swift
//  JJH_Swift3
//
//  Created by Jiajianhao on 2016/10/18.
//  Copyright © 2016年 com.TongHaoDevelopment. All rights reserved.
//

import Foundation
import UIKit

public let Screen_Width = UIScreen.main.bounds.width
public let Screen_Height = UIScreen.main.bounds.height

func JJHRGB(r:CGFloat,g:CGFloat,b:CGFloat) -> UIColor {
    return UIColor(red:r/255.0 ,green:g/255.0,blue:b/255.0,alpha:1.0)
}
