//
//  RootViewController.swift
//  ProjectTemplet
//
//  Created by Chakery on 3/17/16.
//  Copyright © 2016 Chakery. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        didInit()
        setDefaultNavigationTitle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - 初始化TabBar
    private func didInit() {
        tabBar.translucent = false
        viewControllers = [HomeViewControl]
    }
    
    // MARK: - 设置默认的导航标题
    private func setDefaultNavigationTitle() {
        HomeViewControl.tabBarController?.navigationItem.title = "首页".L
    }
    
    /// 首页
    lazy var HomeViewControl: UIViewController = {
        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        let vc = storyboard.instantiateViewControllerWithIdentifier("HomeViewController_identifier") as! HomeViewController
        vc.tabBarItem = UITabBarItem(title: "首页".L, image: nil, selectedImage: nil)
        return vc
    }()
}
