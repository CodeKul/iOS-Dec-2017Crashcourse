//
//  ViewController.swift
//  BasicControls
//
//  Created by Varun on 25/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var txt: UITextField!
    
    @IBOutlet weak var mySlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func goButtonPressed(_ sender: Any) {
        lbl.text = txt.text
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
            lbl.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            lbl.backgroundColor = UIColor.green
        }
        else if sender.selectedSegmentIndex == 2 {
            lbl.backgroundColor = UIColor.blue
        }
        else {
            lbl.backgroundColor = UIColor.black
        }
        
        sender.tintColor = lbl.backgroundColor
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        lbl.text = "\(sender.value)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        
        if sender.isOn {
            mySlider.isUserInteractionEnabled = true
        }
        else {
            mySlider.isUserInteractionEnabled = false
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

