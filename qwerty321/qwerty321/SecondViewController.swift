//
//  SecondViewController.swift
//  qwerty321
//
//  Created by Ekaterina Yashunina on 14.04.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var textField: String?
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let textField = self.textField else { return }
        label.text = "\(textField)"

      
    }
    
    @IBAction func zvadButton(_ sender: UIButton) {
    }

}
