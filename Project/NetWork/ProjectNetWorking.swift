//
//  NetWorking.swift
//  TalkPalLive
//
//  Created by Chakery on 16/3/25.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation
import Alamofire

class ProjectNetWorking {
    class func getTeacherList(page: Int, size: Int, keyword: String?, completion: GetTeacherListBlock?) {
        let api = TalkPalLiveAPI.GetTeacherList(page: page, size: size, keyword: keyword)
        Alamofire.request(api).responseJSON { response in
            print(response.result.value)
        }
    }
    
    class func getTeacherDetail(id: String, completion: GetTeacherListBlock?) {
        let api = TalkPalLiveAPI.GetTeacherDetail(id: id)
        Alamofire.request(api).responseJSON { response in
            print(response.result.value)
        }
    }
}