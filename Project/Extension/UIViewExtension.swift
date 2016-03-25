//
//  UIViewExtension.swift
//  Demo
//
//  Created by Chakery on 16/3/24.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import UIKit

extension UIView {
    // MARK: - 宽
    var width:CGFloat {
        get {
            return self.frame.size.width
        }
        set {
            self.frame.size.width = newValue
        }
    }
    // MARK: - 高
    var height:CGFloat {
        get {
            return self.frame.size.height
        }
        set {
            self.frame.size.height = newValue
        }
    }
    // MARK: - 大小
    var size:CGSize  {
        get {
            return self.frame.size
        }
        set {
            self.frame.size = newValue
        }
    }
    // MARK: - 坐标
    var origin:CGPoint {
        get {
            return self.frame.origin
        }
        set {
            self.frame.origin = newValue
        }
    }
    // MARK: - x
    var x:CGFloat {
        get {
            return self.frame.origin.x
        }
        set {
            self.frame.origin = CGPointMake(newValue, self.frame.origin.y)
        }
    }
    // MARK: - y
    var y:CGFloat {
        get {
            return self.frame.origin.y
        }
        set {
            self.frame.origin = CGPointMake(self.frame.origin.x, newValue)
        }
    }
    // MARK: - 中心点x
    var centerX:CGFloat {
        get {
            return self.center.x
        }
        set {
            self.center = CGPointMake(newValue, self.center.y)
            
        }
    }
    // MARK: - 中心点y
    var centerY:CGFloat {
        get {
            return self.center.y
        }
        set {
            self.center = CGPointMake(self.center.x, newValue)
        }
    }
}