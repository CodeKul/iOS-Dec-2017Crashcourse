//
//  ViewController.swift
//  CustomCell
//
//  Created by Varun on 26/12/17.
//  Copyright © 2017 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrPlayers : [[String : Any]]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrPlayers = [["name" : "Sachin", "DOB" : "24 Apr", "score" : "10000", "image" : #imageLiteral(resourceName: "Player1")], ["name" : "Dhoni", "DOB" : "7 July", "score" : "8000", "image" : #imageLiteral(resourceName: "Player2")], ["name" : "Virat", "DOB" : "16 July", "score" : "6000", "image" : #imageLiteral(resourceName: "Player3")], ["name" : "Yuvraj", "DOB" : "5 May", "score" : "5000", "image" : #imageLiteral(resourceName: "Player4")]]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrPlayers?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell") as! CustomTableViewCell
        
        var dict = arrPlayers![indexPath.row]
        
        cell.lblName.text = dict["name"] as? String
        cell.lblDOB.text = dict["DOB"] as? String
        cell.lblScore.text = dict["score"] as? String
        cell.profileImage.image = dict["image"] as? UIImage
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

