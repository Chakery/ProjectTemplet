//
//  UIColorExtension.swift
//  RtmpDemo
//
//  Created by Chakery on 3/23/16.
//  Copyright © 2016 Chakery. All rights reserved.
//

import UIKit

extension UIColor {
    // MARK: - 初始化
    public convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1) {
        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
    }
    
    // MARK: - 主题颜色
    public class func subjectColor() -> UIColor {
        return UIColor(r: 78, g: 148, b: 252)
    }
    
}