//
//  OnboardingViewController.swift
//  Bank-E
//
//  Created by Ferdous Mahmud Akash on 6/24/22.
//


import UIKit

class OnboardingViewController: UIViewController {
    let stackView = UIStackView()
    let imageView = UIImageView()
    let lebel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension OnboardingViewController {
    func style() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage.init(named: "delorean")
        
        lebel.translatesAutoresizingMaskIntoConstraints = false
        lebel.textAlignment = .center
        lebel.adjustsFontSizeToFitWidth = true
        lebel.numberOfLines = 0
        lebel.text = "Bankey is faster, easier to use and has a brand new look and feel that make you feel like you are back in 1989"
        lebel.font = UIFont.preferredFont(forTextStyle: .title3)
    }
    
    func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(lebel)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1)
        ])
        
    }
}
