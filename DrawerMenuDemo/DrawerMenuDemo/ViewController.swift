//
//  ViewController.swift
//  DrawerMenuDemo
//
//  Created by Varun on 04/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leadingSpaceOfMenu : NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func menuButtonCLick (_ sender : UIButton) {
        
        if leadingSpaceOfMenu.constant == 0 {
            leadingSpaceOfMenu.constant = -200
        }
        else {
            leadingSpaceOfMenu.constant = 0
        }

        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if leadingSpaceOfMenu.constant == 0 {
            leadingSpaceOfMenu.constant = -200
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
}

