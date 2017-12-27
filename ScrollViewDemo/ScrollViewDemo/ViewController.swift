//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by Varun on 27/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myScrollView : UIScrollView!
    @IBOutlet var myContentView : UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myScrollView.contentSize = myContentView.frame.size
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

