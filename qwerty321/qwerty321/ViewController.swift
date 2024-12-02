//
//  ViewController.swift
//  qwerty321
//
//  Created by Ekaterina Yashunina on 12.04.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.textField = textField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }

    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let type = Int(string)

        if type == nil {
            return true
        } else {
            return false
        }
        
    
    }
}

