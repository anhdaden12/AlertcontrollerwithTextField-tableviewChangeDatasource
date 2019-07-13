//
//  ViewController2.swift
//  UIalert+ uitextField
//
//  Created by Ngoc on 7/13/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var numberdatasource =  numberDataSource()
    var personDatasourc = personDatasource()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = numberdatasource
        
    }
    
    
    
    
    @IBAction func onclickSwitch(_ sender: UISwitch) {
        if sender.isOn {
            tableView.dataSource = numberdatasource
        } else{
            tableView.dataSource = personDatasourc
        }
        tableView.reloadData()
    }
    

    

}

class numberDataSource: NSObject, UITableViewDataSource{
   
    var num = [Int](0...100)
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellNum", for: indexPath)
        cell.textLabel?.text = String(num[indexPath.row])
        return cell
    }
    
}

class personDatasource: NSObject, UITableViewDataSource{
    
    var num = [String](arrayLiteral: "mot","hai","ba","bon","nam")
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return num.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellNum", for: indexPath)
        cell.textLabel?.text = num[indexPath.row]
        return cell
    }
    
}

