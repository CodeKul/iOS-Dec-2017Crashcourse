//
//  FirstViewController.swift
//  NavigationControllerByCode
//
//  Created by Varun on 03/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txt : UITextField!
    @IBOutlet var passTxt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButtonPressed () {
        
        let SecondVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        SecondVC.data = txt.text
        
        self.navigationController?.pushViewController(SecondVC, animated: true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == txt {
            return passTxt.becomeFirstResponder()
        }
        return textField.resignFirstResponder()
    }
    
}
