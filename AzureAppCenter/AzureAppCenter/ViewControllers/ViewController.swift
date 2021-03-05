//
//  ViewController.swift
//  AzureAppCenter
//
//  Created by Adolpho Piazza on 05/03/21.
//

import UIKit

class ViewController: UIViewController {

    private let titleLabel: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupTitleLabel()
    }

}

//MARK: - Layouts
extension ViewController {
    
    private func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    private func setupTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(titleLabel)
        
        titleLabel.text = "Testing Azure DevOps App Center"
        titleLabel.textColor = .label
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 25)
        titleLabel.numberOfLines = 2
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
    
}
