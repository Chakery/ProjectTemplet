//
//  APIImpl.swift
//  Coderpursue
//
//  Created by Chakery on 16/3/25.
//  Copyright © 2016年 JungleSong. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

private let baseURL = "http://www.talkpal.cc"

extension ProjectAPI: URLRequestConvertible {
    
    /// 请求方式
    private var method: Alamofire.Method {
        switch self {
        case .GetTeacherDetail:
            return .GET
        default:
            return .POST
        }
    }
    
    /// 路径
    private var path: String {
        switch self {
        case .GetTeacherList:
            return "/teacher/list"
        case .GetTeacherDetail(let id):
            return "/api/teacher/detail/\(id)"
        }
    }
    
    /// Header
    private var header: [String : String]? {
        switch self {
        default:
            return nil
        }
    }
    
    /// 参数
    private var parameters: [String: AnyObject]? {
        switch self {
        case .GetTeacherList(let page, let size, let keyword):
            var param: [String : AnyObject] = [
                "page": page,
                "size": size,
            ]
            if keyword != nil {
                param["keyWord"] = keyword!
            }
            return param
            
        default:
            return nil
        }
    }
    
    /// 编码
    private var encoding: ParameterEncoding {
        switch self {
        default:
            return .URLEncodedInURL
        }
    }
    
    /// URLRequest
    public var URLRequest: NSMutableURLRequest {
        let URL = NSURL(string: baseURL)
        let URLRequest = NSMutableURLRequest(URL: URL!.URLByAppendingPathComponent(path))
        URLRequest.HTTPMethod = method.rawValue
        if let header = header {
            for (key, value) in header {
                URLRequest.addValue(value, forHTTPHeaderField: key)
            }
        }
        return encoding.encode(URLRequest, parameters: parameters).0
    }
}