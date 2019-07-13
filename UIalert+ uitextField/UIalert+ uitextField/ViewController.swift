//
//  ViewController.swift
//  UIalert+ uitextField
//
//  Created by Ngoc on 7/13/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var alertcontroller: UIAlertController?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.verfyinfomation()
    }
    
    func verfyinfomation() {
         alertcontroller = UIAlertController(title: "VreifyInfomation", message: "Enter email and password", preferredStyle: .alert)
        alertcontroller?.addTextField { (textField) in
            textField.placeholder = "Enter your email"
            textField.keyboardType = .emailAddress
        }
        
        alertcontroller?.addTextField { (textPass) in
            textPass.placeholder = "Enter your pass"
            textPass.isSecureTextEntry = true
        }
        
        let okaction = UIAlertAction(title: "OK", style: .default) { (alert) in
            let textEmail = self.alertcontroller?.textFields![0] as! UITextField
            let textPass = self.alertcontroller?.textFields![1] as! UITextField
            if (textEmail.text != "vantuan42@gmail.com") || (textPass.text != "123456") {
                self.verfyinfomation()
            }
        }
        self.alertcontroller?.addAction(okaction)
        self.present(alertcontroller!, animated: true, completion: nil)
    }
    
    @IBAction func onCLickButton(_ sender: Any){
        self.verfyinfomation()
    }


}

