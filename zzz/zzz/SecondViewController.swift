//
//  SecondViewController.swift
//  zzz
//
//  Created by Ekaterina Yashunina on 19.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    let backButton = UIButton(type: .system)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray

        setupButton()
      
    }
    
    func setupButton() {
        backButton.setTitle("vzad", for: .normal)
        backButton.setTitleColor(.yellow, for: .normal)
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        backButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15).isActive = true
        backButton.addTarget(self, action: #selector(backButtonClick), for: .touchUpInside)
    }
    @objc func backButtonClick() {
        dismiss(animated: true)
    }

}
