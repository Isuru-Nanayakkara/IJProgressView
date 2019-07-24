//
//  TabBarViewController.swift
//  IJProgressView
//
//  Created by Isuru Nanayakkara on 7/24/19.
//  Copyright © 2019 Appex. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
    }
}

extension TabBarViewController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(#function)
    }
}
