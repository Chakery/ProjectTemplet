//
//  TalkPalAPI.swift
//  TalkPal
//
//  Created by Chakery on 15/9/10.
//

import Foundation

public enum ProjectAPI {
    case GetTeacherList(page: Int, size: Int, keyword: String?)
    case GetTeacherDetail(id: String)
}
