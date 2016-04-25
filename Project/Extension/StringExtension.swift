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
    
    // MARK: - MD5
    var MD5: String! {
        let str = self.cStringUsingEncoding(NSUTF8StringEncoding)
        let strLen = CC_LONG(self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding))
        let digestLen = Int(CC_MD5_DIGEST_LENGTH)
        let result = UnsafeMutablePointer<CUnsignedChar>.alloc(digestLen)
        
        CC_MD5(str!, strLen, result)
        
        let hash = NSMutableString()
        for i in 0..<digestLen {
            hash.appendFormat("%02x", result[i])
        }
        
        result.dealloc(digestLen)
        
        return hash as String
    }
}