//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Ekaterina Yashunina on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.isHidden = true
        label.font = label.font.withSize(20)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
   
    
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        
        label.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is selected"
            label.textColor = .yellow
        case 1:
            label.text = "The second segment is selected"
            label.textColor = .purple
        case 2:
            label.text = "The third segment is selected"
            label.textColor = .green
        default:
            print("Что-то пошло не так :(")
        }
        
    }

}
