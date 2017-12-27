//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Varun on 26/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var arrData1 : [String]?
    var arrData2 : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrData1 = ["Red", "Green", "Blue", "Yellow", "Black", "White", "Magenta"]
        
        arrData2 = ["Varun", "Jay", "Nikhil", "Aniruddha", "Abhijeet", "John"]
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return (arrData1?.count)!
        }
        return (arrData2?.count)!
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return arrData1?[row]
        }
        return arrData2?[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        print("Component: \(component)\nRow: \(row)")
        if component == 0 {
            print("\(arrData1![row])")
        }
        else {
            print("\(arrData2![row])")
        }
    }
    
    @IBAction func datePicked(_ sender: UIDatePicker) {

        let df = DateFormatter()
        df.dateFormat = "yyyy-MMM-dd hh:mm a"
        
        print(df.string(from: sender.date))
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

