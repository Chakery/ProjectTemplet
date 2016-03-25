//
//  AccountHelper.swift
//  TalkPalLive
//
//  Created by Chakery on 16/3/25.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation
import KeychainAccess

class AccountHelper: NSObject {
    private static var tempAccountModel: AccountModel?
    class var accountModel: AccountModel? {
        get{
            // 如果存在, 直接返回
            if tempAccountModel != nil {
                return tempAccountModel
            }
            // 在userdefault里面查找用户信息
            guard let dic = NSUserDefaults().objectForKey(UserInfoUserDefault) as? [String : AnyObject] else {
                return nil
            }
            // 获取userid
            guard let userid = dic["userid"] as? String else {
                return nil
            }
            // 根据userid, 从keychain获取token
            let keychain = Keychain(service: TalkPalLiveKeyChainService)
            do {
                if let token = try keychain.getString(userid) {
                    tempAccountModel = AccountModel(token: token, userDictionary: dic)
                    return tempAccountModel
                }
            } catch {
                return nil
            }
            return nil
        }
        
        set{
            tempAccountModel = newValue
            if let model = tempAccountModel {
                NSUserDefaults.setVauleForKey(value: model.user.toDictionary(), key: UserInfoUserDefault)
                let keyChain = Keychain(service: TalkPalLiveKeyChainService)
                keyChain[model.user.userid] = model.accountToken
                NSNotificationCenter.defaultCenter().postNotificationName(AccountChangeNotification, object: nil)
            }
        }
    }
    
    // MARK: - 移除用户信息
    class func removeUserInfo() {
        if let dic = NSUserDefaults().objectForKey(UserInfoUserDefault) as? [String : AnyObject] {
            if let userid = dic["userid"] as? String {
                let keychain = Keychain(service: TalkPalLiveKeyChainService, accessGroup: userid)
                keychain[userid] = nil
            }
            NSUserDefaults.removeValueForKey(UserInfoUserDefault)
        }
        tempAccountModel = nil
        NSNotificationCenter.defaultCenter().postNotificationName(AccountChangeNotification, object: nil)
    }
    
    // MARK: - 跳转登录界面
    class func showLoginViewController() {
        // 跳转登录界面
        let rootViewControl = UIApplication.sharedApplication().keyWindow?.rootViewController
        rootViewControl?.showViewController(loginViewControl, sender: nil)
    }
    
    static var loginViewControl: UINavigationController = {
        let storyboard = UIStoryboard(name: LoginViewControllerStoryBoardName, bundle: nil)
        let nvc = storyboard.instantiateViewControllerWithIdentifier(LoginViewControllerStoryBoardIdentifier) as! UINavigationController
        return nvc
    }()
}