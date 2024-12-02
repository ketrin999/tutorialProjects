//
//  ViewController.swift
//  test
//
//  Created by Ekaterina Yashunina on 12.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var actionBattons: [UIButton]!
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(17)
        
        button.isHidden = true
        
        for button in actionBattons {
            button.setTitleColor(.blue, for: .normal)
            button.backgroundColor = .green
        }
        
        button.setTitle("Clear", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .red
        
    }
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        label.isHidden = false
        button.isHidden = false
        
        if sender.tag == 0 {
            label.text = "Hello, World!"
            label.textColor = .red
        } else if sender.tag == 1 {
            label.text = "Hi there"
            label.textColor = .blue
        } else if sender.tag == 2 {
            label.isHidden = true
            button.isHidden = true
        }
    }
}

