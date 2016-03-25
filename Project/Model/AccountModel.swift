//
//  AccountModel.swift
//  TalkPalLive
//
//  Created by Chakery on 16/3/25.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

struct AccountModel {
    var user: UserModel
    var accountToken: String
    
    init(token: String, userDictionary: [String : AnyObject]) {
        self.accountToken = token
        self.user = UserModel(dic: userDictionary)
    }
}