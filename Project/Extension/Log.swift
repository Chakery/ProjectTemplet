//
//  Log.swift
//  TalkpalLive
//
//  Created by Chakery on 16/4/21.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation
import XCGLogger

public let log: XCGLogger = {
    let log = XCGLogger.defaultInstance()
    // let logPath : NSURL = cacheDirectory.URLByAppendingPathComponent("XCGLogger.Log")
    // By using Swift build flags, different log levels can be used in debugging versus staging/production. Go to Build settings -> Swift Compiler - Custom Flags -> Other Swift Flags and add -DDEBUG to the Debug entry.
    #if DEBUG
        log.setup(.Debug, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: nil)
    #else
        log.setup(.Severe, showThreadName: true, showLogLevel: true, showFileNames: true, showLineNumbers: true, writeToFile: nil)
    #endif
    log.xcodeColorsEnabled = true
    log.xcodeColors = [
        .Verbose: .lightGrey,
        .Debug: .darkGrey,
        .Info: .darkGreen,
        .Warning: .orange,
        .Error: .red,
        .Severe: .whiteOnRed
    ]
    return log
}()

//private var documentsDirectory: NSURL {
//    let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
//    return urls[urls.endIndex-1]
//}

//private var cacheDirectory: NSURL {
//    let urls = NSFileManager.defaultManager().URLsForDirectory(.CachesDirectory, inDomains: .UserDomainMask)
//    return urls[urls.endIndex-1]
//}