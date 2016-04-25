//
//  StoryBoardConfig.swift
//  TalkPalLive
//
//  Created by Chakery on 16/4/9.
//  Copyright © 2016年 Chakery. All rights reserved.
//

import Foundation

public enum StoryBoard {
    case Home
    case Broadcast
    case Me
    case Login
}

public extension StoryBoard {
    var Name: String {
        switch self {
        case .Home:
            return "Home"
        case .Broadcast:
            return "Broadcast"
        case .Me:
            return "Me"
        case .Login:
            return "Login"
        }
    }
    
    var id: String {
        switch self {
        case .Home:
            return "HomeViewController"
        case .Broadcast:
            return "broadcast_storyboard_id"
        case .Me:
            return "MeViewController"
        case .Login:
            return "loginViewController_storyBoardID"
        }
    }
}