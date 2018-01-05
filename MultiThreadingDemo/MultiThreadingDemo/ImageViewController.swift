//
//  ImageViewController.swift
//  MultiThreadingDemo
//
//  Created by Varun on 05/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet var myImageView : UIImageView!
    @IBOutlet var activityIndicator : UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        activityIndicator.startAnimating()
        DispatchQueue.global().async {
            let image = try! UIImage(data: Data(contentsOf: URL(string: "https://vignette.wikia.nocookie.net/disney/images/9/96/Iron-Man-AOU-Render.png/revision/latest?cb=20150208173247")!))
            
            DispatchQueue.main.async {
                self.myImageView.image = image
                self.activityIndicator.stopAnimating()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
