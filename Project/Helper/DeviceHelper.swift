//
//  DeviceHelper.swift
//  TalkpalLive
//
//  Created by Chakery on 16/4/15.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

class DeviceHelper {
    /**
     当前是否有摄像头
     
     - returns: true or false
     */
    class func isCameraAvailable() -> Bool {
        return UIImagePickerController.isSourceTypeAvailable(.Camera)
    }
    
    /**
     前置摄像头是否可用
     
     - returns: true or false
     */
    class func isFrontCameraAvailable() -> Bool {
        return UIImagePickerController.isCameraDeviceAvailable(.Front)
    }
    
    /**
     后置摄像头是否可用
     
     - returns: true or false
     */
    class func isRearCameraAvailable() -> Bool {
        return UIImagePickerController.isCameraDeviceAvailable(.Front)
    }
}