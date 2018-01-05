//
//  WebViewController.swift
//  JsonParsingDemo
//
//  Created by Varun on 05/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    var strURL : String?
    
    @IBOutlet var myWebView : WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myWebView.load(URLRequest(url: URL(string: "https://" + strURL!)!))
        
    }

    @IBAction func leftSwiped (_ sender : UISwipeGestureRecognizer) {
        
        self.dismiss(animated: true, completion: nil)
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
