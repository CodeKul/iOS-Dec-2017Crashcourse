//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Varun on 27/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet var progressView : UIProgressView!
    @IBOutlet var urlTextField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func goButtonCLicked(_ sender : UIButton) {
        
        let url = URL(string: urlTextField.text!)
        
        let req = URLRequest(url: url!)
        
        myWebView.uiDelegate = self
        myWebView.navigationDelegate = self
        myWebView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
        
        myWebView.load(req)

    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "estimatedProgress" {
            
            urlTextField.text = myWebView.url?.absoluteString

            progressView.isHidden = false
            progressView.progress = Float(myWebView.estimatedProgress)
            if myWebView.estimatedProgress == 1 {
                progressView.isHidden = true
            }
        }
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

