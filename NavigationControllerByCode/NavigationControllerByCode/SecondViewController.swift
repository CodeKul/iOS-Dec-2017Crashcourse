//
//  SecondViewController.swift
//  NavigationControllerByCode
//
//  Created by Varun on 03/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var lbl : UILabel!
    
    var data : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()


        lbl.text = data
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
