//
//  ViewController.swift
//  PlistDemo
//
//  Created by Varun on 03/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = paths + "/data.plist"
        
        print("\(path)")
        
        let data = NSMutableDictionary()
        let object = ["Red","Green","Blue"]
        
        data.setValue(object, forKey: "colors")
        data.write(toFile: path, atomically: true)
    }

    @IBAction func showDataPressed (_ sender : UIButton) {
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as String
        let path = paths + "/data.plist"

        let data = NSDictionary(contentsOfFile: path)
        
        let arr = data!["colors"] as! [String]
        
        let color = arr.first
        
        let alert = UIAlertController(title: "Codekul", message: color, preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

