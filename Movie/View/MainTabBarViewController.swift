//
//  ViewController.swift
//  Movie
//
//  Created by Grisha Diehl on 03.08.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow
        
        let vc1 = UINavigationController(rootViewController: HomeViewController())
        let vc2 = UINavigationController(rootViewController: SearchViewController())
        
        vc1.tabBarItem.image = UIImage(systemName: "play")
        vc2.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        vc1.title = "Home"
        vc2.title = "Search"
        
        tabBar.tintColor = .label
        
        setViewControllers([vc1, vc2], animated: true)
    }

}

