//
//  UserModel.swift
//  TalkPalLive
//
//  Created by Chakery on 16/3/25.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

struct UserModel {
    var userid: String
}

extension UserModel {
    init (dic: [String : AnyObject]) {
        self.userid = dic["userid"]!.stringValue
    }
    
    func toDictionary() -> [String : AnyObject] {
        return [:]
    }

}