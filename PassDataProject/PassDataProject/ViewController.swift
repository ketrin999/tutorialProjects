//
//  ViewController.swift
//  PassDataProject
//
//  Created by Ekaterina Yashunina on 08.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func loginTappd(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard.segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.resultLabel.text = svc.label.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        
        dvc.login = loginTF.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

