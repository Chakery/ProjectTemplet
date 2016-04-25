//
//  ParseHelper.swift
//  TalkPalLive
//
//  Created by Chakery on 16/3/28.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ParseHelper: NSObject {
    /**
     统一JSON解析
     
     - parameter result: 需要解析的结果
     
     - returns: 返回Result<JSON, NSError>
     */
    class func dataParse(result: Result<AnyObject, NSError>) -> Result<JSON, NSError> {
        switch result {
        case .Success(let value):
            let json = JSON(value)
            if json["errors"] != nil {
//                if let errs = json["errors"].array {
//                    return Result.Failure(NSError(domain: errs.first?.string ?? "未知错误", code: -1, userInfo: nil))
//                }
//                return Result.Failure(NSError(domain: "未知错误", code: -1, userInfo: nil))
                let errMsg = json["errors"].dictionary?.values.first?.string ?? json["errors"].string ?? "未知错误"
                return Result.Failure(NSError(domain: errMsg, code: 0, userInfo: nil))
            }
            return Result.Success(json["data"])
        case .Failure(let error):
            return Result.Failure(error)
        }
    }
}