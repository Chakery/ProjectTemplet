//
//  RequestHelper.swift
//  TalkpalLive
//
//  Created by Chakery on 16/4/18.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class RequestHelper {
    /**
     统一HTTP请求
     
     - parameter api:        API
     - parameter completion: 回调 Result<JSON, NSError> -> Void
     */
    class func httpRequestWithAPI(api: TalkPalLiveAPI, completion: Result<JSON, NSError> -> Void) {
        Alamofire
            .request(api)
            .responseJSON { response in
                let result = ParseHelper.dataParse(response.result)
                completion(result)
        }
    }
}