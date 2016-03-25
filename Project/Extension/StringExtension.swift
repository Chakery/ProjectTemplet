//
//  StringExtension.swift
//  ProjectTemplet
//
//  Created by Chakery on 3/17/16.
//  Copyright © 2016 Chakery. All rights reserved.
//

import Foundation

extension String {
    // MARK: - 国际化
    var L: String {
        return NSLocalizedString(self, comment: self)
    }
}