//
//  InfoViewController.swift
//  NewProjectNavigation
//
//  Created by Evgenij Zolotov on 9/26/22.
//

import UIKit

final class InfoViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        let image = UIImage(systemName: "info.bubble")
        button.setBackgroundImage(image, for: .normal)
        button.addTarget(self,
                         action: #selector(buttonPressed),
                         for: .touchUpInside)
        button.backgroundColor = .orange
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc
    private func buttonPressed() {
        
        let alert = UIAlertController(
            title: "Вниемание!",
            message: "Аккуратно!",
            preferredStyle: .alert
        )
        
        let actionOne = UIAlertAction(title: "Продолжить", style: .default)
        let actionTwo = UIAlertAction(title: "Отмена", style: .cancel) { _ in
            self.dismiss(animated: true)
        }
        
        alert.addAction(actionOne)
        alert.addAction(actionTwo)
        self.present(alert, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
    
    private func setupViewController() {
        view.backgroundColor = .darkGray
        self.title = "InfoViewController"
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
            button.heightAnchor.constraint(equalToConstant: 50),
            button.widthAnchor.constraint(equalToConstant: 50)
        ])
    }
}
