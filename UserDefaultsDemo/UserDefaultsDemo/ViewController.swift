//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Varun on 03/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UserDefaults.standard.set("This is iOS crashcourse batch!", forKey: "data1")
        
    }
    
    @IBAction func showDataPressed (_ sender : UIButton) {
        
        let alert = UIAlertController(title: "Codekul", message: "\(UserDefaults.standard.value(forKey: "data1")!)", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (ok) in
            print("OK pressed")
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { (cancel) in
            print("Cancel pressed")
        }))
        
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

