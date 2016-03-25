//
//  UserDefaultExtension.swift
//  RtmpDemo
//
//  Created by Chakery on 3/22/16.
//  Copyright © 2016 Chakery. All rights reserved.
//

import Foundation

extension NSUserDefaults {
    class func setVauleForKey(value value: Any, key: String) {
        let userDefaults = NSUserDefaults()
        if value is NSInteger || value is Int {
            userDefaults.setInteger(value as! NSInteger, forKey: key)
        } else if value is Float {
            userDefaults.setFloat(value as! Float, forKey: key)
        } else if value is Double {
            userDefaults.setDouble(value as! Double, forKey: key)
        } else if value is Bool {
            userDefaults.setBool(value as! Bool, forKey: key)
        } else if value is NSURL {
            userDefaults.setURL(value as? NSURL, forKey: key)
        } else {
            userDefaults.setObject(value as? AnyObject, forKey: key)
        }
        userDefaults.synchronize()
    }
    
    class func removeValueForKey(key: String) {
        let userDefaults = NSUserDefaults()
        userDefaults.removeObjectForKey(key)
        userDefaults.synchronize()
    }
}