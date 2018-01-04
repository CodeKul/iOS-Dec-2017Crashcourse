//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 04/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [Student]?
    
    var appDelegate : AppDelegate?
    
    @IBOutlet var tableObj : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate = (UIApplication.shared.delegate as! AppDelegate)
        
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        
        let req = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        arrData = try! (appDelegate?.persistentContainer.viewContext.fetch(req) as! [Student])
        
        tableObj.reloadData()

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell")
     
        let obj = arrData![indexPath.row]
        
        cell?.textLabel?.text = obj.name
        cell?.detailTextLabel?.text = obj.rollno! + " - " + obj.marks!
        
        return cell!
    }
    
    @IBAction func addNew (_ sender : UIButton) {
        
        let EditVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EditViewController")
        
        self.navigationController?.pushViewController(EditVC, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

