//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 26/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arrData1 : [String]?
    var arrData2 : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        arrData1 = ["Red", "Green", "Blue", "Yellow", "Black", "White", "Magenta", "Cyan"]
        
        arrData2 = ["Varun", "Jay", "Nikhil", "Aniruddha", "Abhijeet", "John", "Bharat", "Ganesh", "Vishwajeet", "Vaibhav", "Ajinkya"]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return (arrData1?.count)!
        }
        return (arrData2?.count)!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "This is section \(section + 1)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = arrData1![indexPath.row]
            cell?.detailTextLabel?.text = "detail"
        }
        else {
            cell?.textLabel?.text = arrData2![indexPath.row]
        }
        
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            print("\(arrData1![indexPath.row])")
        }
        else {
            print("\(arrData2![indexPath.row])")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

