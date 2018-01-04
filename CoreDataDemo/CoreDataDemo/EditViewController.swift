//
//  EditViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 04/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class EditViewController: UIViewController {

    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtRollNo : UITextField!
    @IBOutlet var txtMarks : UITextField!

    var appDelegate : AppDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    }

    @IBAction func saveButtonPressed (_ sender : UIButton) {
        
        let entity = NSEntityDescription.entity(forEntityName: "Student", in: (appDelegate?.persistentContainer.viewContext)!)
        
        let stu = NSManagedObject(entity: entity!, insertInto: appDelegate?.persistentContainer.viewContext)

        stu.setValue(txtName.text, forKey: "name")
        stu.setValue(txtRollNo.text, forKey: "rollno")
        stu.setValue(txtMarks.text, forKey: "marks")
        
        appDelegate?.saveContext()
        
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
