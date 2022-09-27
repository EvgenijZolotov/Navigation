//
//  TabBarController.swift
//  NewProjectNavigation
//
//  Created by Evgenij Zolotov on 9/26/22.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController()
        
        let feedViewController = UINavigationController(rootViewController:
            FeedViewController())
        let profileViewController = UINavigationController(rootViewController:
            ProfileViewController())
        
        feedViewController.tabBarItem.title = "FeedViewController"
        feedViewController.tabBarItem.image = UIImage(systemName: "square.and.arrow.up.on.square")
        
        profileViewController.tabBarItem.title = "ProfileViewController"
        profileViewController.tabBarItem.image = UIImage(systemName: "ellipsis.bubble")
        
        viewControllers = [
            feedViewController,
            profileViewController
        ]
        
        tabBar.tintColor = .red
        tabBar.backgroundColor = .systemBrown
    }
    // цвет всплывающего view - PostViewController
    private func setupViewController() {
        view.backgroundColor = .yellow
        addSubView()
        setupConstaint()
    }
    
    private func addSubView() {
        
    }
    
    func setupConstaint() {
        
    }
}
