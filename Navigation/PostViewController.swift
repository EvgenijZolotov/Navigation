//
//  PostViewController.swift
//  NewProjectNavigation
//
//  Created by Evgenij Zolotov on 9/26/22.
//

import UIKit

final class PostViewController: UIViewController {
    
    private lazy var button = UIBarButtonItem(
        image: UIImage(systemName: "square.grid.3x1.folder.badge.plus"),
        style: .done,
        target: self,
        action: #selector(buttonPressed)
    )
    
    @objc
    private func buttonPressed() {
        let viewController = InfoViewController()
        present(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        view.backgroundColor = .orange
        self.title = FeedViewController().postTitle.title
        self.navigationItem.rightBarButtonItem = button
        addSubView()
        setupConstraint()
    }
    
    private func addSubView() {
        
    }
    
    func setupConstraint() {
        
    }
}
