//
//  NSObjectExtension.swift
//  TalkPalLive
//
//  Created by Chakery on 16/4/6.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

public func delay(time: NSTimeInterval, action: Void -> Void) {
    let popTime = dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC)));
    dispatch_after(popTime, dispatch_get_main_queue(), {
        action()
    })
}