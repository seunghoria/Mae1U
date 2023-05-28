//
//  ViewController.swift
//  Mission1_UIKit
//
//  Created by seunghoria on 2023/05/27.
//

import UIKit

class MainTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStyle()
    }

    func setupStyle() {
            UITabBar.clearShadow()
            tabBar.layer.applyShadow(color: .black, alpha: 0.1, x: 0, y: -1, blur: 4)
    }

}

