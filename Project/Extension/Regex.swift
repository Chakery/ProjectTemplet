//
//  File.swift
//  TalkPalLive
//
//  Created by Chakery on 16/4/6.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

infix operator =~ {}

func =~(input: String, pattern: String) -> Bool {
    return input.rangeOfString(pattern, options: .RegularExpressionSearch) != nil
}