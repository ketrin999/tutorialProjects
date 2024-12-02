//
//  LoginViewController.swift
//  greetings
//
//  Created by Ekaterina Yashunina on 29.03.2023.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onUserClickLogin(_ sender: Any) {
        let userName = loginTextField.text
        let password = passwordTextField.text
        
        if userName == nil || password == nil || userName == "" || password == "" {
            let alertController = UIAlertController(title: "Пожалуйста, введите логин и пароль", message: nil, preferredStyle: .alert)
            
            let action = UIAlertAction(title: "ok", style: .cancel)
            alertController.addAction(action)
            
            present(alertController, animated: true)
        } else {
            performSegue(withIdentifier: "goToDrinkType", sender: self)
        }
    }
    
}
