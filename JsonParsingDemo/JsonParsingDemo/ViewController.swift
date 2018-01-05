//
//  ViewController.swift
//  JsonParsingDemo
//
//  Created by Varun on 05/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [[String : Any]]?
    
    @IBOutlet var myTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = [[String : Any]]()
        let dataTask = URLSession.shared.dataTask(with: URL(string : "http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=varun05")!) { (data, response, error) in
            
            if data != nil {
                let dictData = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
                
                self.arrData = (dictData["geonames"] as! [[String : Any]])
                
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            }
            else {
                print("Error while parsing")
            }
        }
        dataTask.resume()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrData?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dict = arrData![indexPath.row]
        cell?.textLabel?.text = (dict["toponymName"] as! String)
        cell?.tag = indexPath.row
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "tableViewToWebView" {
            let webVC = segue.destination as! WebViewController
            
            let cell = sender as! UITableViewCell
            
            let dict = arrData?[cell.tag]
            
            webVC.strURL = (dict!["wikipedia"] as! String)
        }
    }
}

