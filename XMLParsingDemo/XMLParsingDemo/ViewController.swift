//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Varun on 04/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate, UITableViewDataSource, UITableViewDelegate {

    var parser : XMLParser?
    var dictData : [String : Any]?
    var arrData : [[String : Any]]?
    var strData : String?
    
    @IBOutlet var tableViewObj : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        parser = XMLParser(contentsOf: URL(string : "https://www.chilkatsoft.com/xml-samples/bookstore.xml")!)
        parser?.delegate = self
        parser?.parse()
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        
        print("parserDidStartDocument")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "book" {
            dictData = [String : Any]()
        }
        else if elementName == "bookstore" {
            arrData = [[String : Any]]()
        }
        else if elementName == "title" || elementName == "price" {
            strData = ""
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        if strData != nil {
            strData! += string
        }
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "book" {
            arrData?.append(dictData!)
        }
        else if elementName == "bookstore" {
            print(arrData!)
            
            DispatchQueue.main.async {
                self.tableViewObj.reloadData()
            }
        }
        else if elementName == "title" {
            dictData!["title"] = strData
            strData = nil
        }
        else if elementName == "price" {
            dictData!["price"] = strData
            strData = nil
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        
        print("parserDidEndDocument")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dict = arrData![indexPath.row]
        
        cell?.textLabel?.text = (dict["title"] as! String)
        cell?.detailTextLabel?.text = (dict["price"] as! String)
        
        return cell!
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

