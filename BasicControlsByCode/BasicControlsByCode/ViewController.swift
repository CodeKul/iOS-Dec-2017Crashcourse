//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Varun on 25/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var lbl : UILabel?
    var txt : UITextField?
    var segmentedControl : UISegmentedControl?
    var mySlider : UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl = UILabel(frame: CGRect(x: 10, y: 20, width: 300, height: 30))
        lbl?.text = "Codekul"
        lbl?.textColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        lbl?.backgroundColor = UIColor.red
        lbl?.textAlignment = .center

        self.view.addSubview(lbl!)

        let btn = UIButton(frame: CGRect(x: 110, y: 60, width: 100, height: 30))
        
        btn.setTitle("GO", for: .normal)
        btn.setTitle("Selected", for: .highlighted)
        btn.setTitleColor(UIColor.black, for: .normal)
        
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        
        self.view.addSubview(btn)
        
        txt = UITextField(frame: CGRect(x: 10, y: 100, width: 300, height: 30))
        txt?.placeholder = "Name"
        txt?.borderStyle = .bezel
        
        self.view.addSubview(txt!)
        
        segmentedControl = UISegmentedControl(frame: CGRect(x: 10, y: 140, width: 300, height: 40))
        
        segmentedControl?.insertSegment(withTitle: "Red", at: 0, animated: true)
        
        segmentedControl?.insertSegment(withTitle: "Green", at: 1, animated: true)
    
        segmentedControl?.insertSegment(withTitle: "Blue", at: 2, animated: true)
        segmentedControl?.selectedSegmentIndex = 0
        
        segmentedControl?.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        
        self.view.addSubview(segmentedControl!)
        
        mySlider = UISlider(frame: CGRect(x: 10, y: 190, width: 300, height: 30))
        mySlider?.maximumValue = 100
        mySlider?.minimumValue = 10
        mySlider?.value = 30
        
        mySlider?.maximumTrackTintColor = UIColor.red
        mySlider?.minimumTrackTintColor = UIColor.green
        
        mySlider?.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        
        self.view.addSubview(mySlider!)
        
        let mySwitch = UISwitch(frame: CGRect(x: 135, y: 230, width: 50, height: 30))
        mySwitch.isOn = false
        
        mySlider?.isUserInteractionEnabled = false

        mySwitch.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)
        
        self.view.addSubview(mySwitch)
    }

    @objc func switchValueChanged (_ sender : UISwitch) {
        
        if sender.isOn {
            mySlider?.isUserInteractionEnabled = true
        }
        else {
            mySlider?.isUserInteractionEnabled = false
        }
    }
    
    @objc func sliderValueChanged (_ sender : UISlider) {
        
        lbl?.text = "\(sender.value)"
    }
    
    @objc func segmentedControlValueChanged(_ sender : UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            lbl?.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            lbl?.backgroundColor = UIColor.green
        }
        else {
            lbl?.backgroundColor = UIColor.blue
        }
    }
    
    @objc func btnClicked(_ sender : UIButton) {
        
        lbl?.text = txt?.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

