//
//  Constants.swift
//  TalkPal
//
//  Created by Chakery on 15/9/19.
//
//
import UIKit
import Alamofire

public let ScreenWidth = UIScreen.mainScreen().bounds.size.width
public let ScreenHeight = UIScreen.mainScreen().bounds.size.height
public let MainBounds = UIScreen.mainScreen().bounds


// NSUserDefault Key
public let TalkPalLiveKeyChainService = "com.ccggyy.ProjectName"
public let UserInfoUserDefault = "userinfo"

// NSNotification Name
public let AccountChangeNotification = "AccountChangeNotification"

// StoryBoard Identifier
public let LoginViewControllerStoryBoardIdentifier = "loginViewController"
public let HomeViewControllerStoryBoardIdentifier = "HomeViewController"

// storyBoard Name
public let HomeViewControllerStoryBoardName = "Home"
public let LoginViewControllerStoryBoardName = "Login"

// Block
public typealias GetTeacherListBlock = Result<AnyObject, NSError> -> Void