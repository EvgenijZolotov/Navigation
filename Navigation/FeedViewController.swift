//
//  FeedViewController.swift
//  NewProjectNavigation
//
//  Created by Evgenij Zolotov on 9/26/22.
//

import UIKit

final class FeedViewController: UIViewController {
    
    var postTitle = PostModel(title: "PostViewController")
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "figure.walk.motion")
        button.setBackgroundImage(image, for: .normal)
        button.addTarget(self, action: #selector(buttonPressed), for:
                .touchUpInside)
        //button.backgroundColor = .yellow
        //button.layer.masksToBounds = true
        //button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc
    private func buttonPressed() {
        let viewController = PostViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
     
    private func setupViewController() {
        view.backgroundColor = .green
        self.title = "FeedViewController"
        addSubView()
        setupConstraint()
    }
    
    private func addSubView() {
        view.addSubview(button)
    }
    
    func setupConstraint() {
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 40),
            button.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}
