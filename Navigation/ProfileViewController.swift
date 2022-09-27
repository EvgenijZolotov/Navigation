//
//  ProfileViewController.swift
//  NewProjectNavigation
//
//  Created by Evgenij Zolotov on 9/26/22.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        view.backgroundColor = .systemPurple
        self.title = "ProfileViewController"
        addSubView()
        setupConstraint()
    }
    
    private func addSubView() {
        
    }
    
    func setupConstraint() {
        
    }
}
