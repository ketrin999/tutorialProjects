//
//  ViewController.swift
//  UIAlertController
//
//  Created by Ekaterina Yashunina on 14.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showButton(_ sender: UIButton) {
    
    func alert(title: String, message: String, style: UIAlertController) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "ok", style: .default) { action in
            
          
        }
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    }

}

