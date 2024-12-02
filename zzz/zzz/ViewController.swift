//
//  ViewController.swift
//  zzz
//
//  Created by Ekaterina Yashunina on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let view1: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let view2: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Press me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .green
        button.titleLabel?.textColor = .black
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(button)
        
        setupView1()
        setupView2()
        setupButton()
        
    }

    func setupView1() {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    func setupView2() {
        view2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        view2.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true
        view2.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    func setupButton() {
        button.leftAnchor.constraint(equalTo: view1.leftAnchor).isActive = true
        button.rightAnchor.constraint(equalTo: view2.rightAnchor).isActive = true
        button.topAnchor.constraint(equalTo: view1.bottomAnchor, constant: 20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    
    }
    
    @objc func buttonClick() {
        let svc = SecondViewController()
        svc.modalPresentationStyle = .fullScreen
        present(svc, animated: true, completion: nil)
    }

}

