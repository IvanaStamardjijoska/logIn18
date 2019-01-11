//
//  ViewController.swift
//  logIn18
//
//  Created by CodeWell on 10/29/18.
//  Copyright © 2018 Ivana Stamardjioska. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

  
    @IBOutlet weak var userEmail: UITextField!
    @IBOutlet weak var userPassword: UITextField!
     @IBOutlet weak var userAge: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressLogin(_ sender: Any) {
        if let yearsOld = Int(userAge.text!) , yearsOld > 18{
            NSLog("Login Succesfully... ")
        } else {
            NSLog("Login Faield...")
        }
    }
    
    @IBAction func calculateAge(_ sender: Any) {
        let pickedDate = datePicker.date
        let todayDate = Date()
        let currentCalendar = Calendar.current
        guard let start = currentCalendar.ordinality(of: .year, in: .era, for: pickedDate)
            else {
            return
        }
        guard let end = currentCalendar.ordinality(of: .year, in: .era, for: todayDate)
            
            else {
            return
        }
        let difference = end - start
        userAge.text = "\(difference)"
        
    }
    @IBAction func valueChanged(_ sender: Any) {
        let pickedDate = datePicker.date
        let todayDate = Date()
        let currentCalendar = Calendar.current
        guard let start = currentCalendar.ordinality(of: .year, in: .era, for: pickedDate) else {
            return
        }
        guard let end = currentCalendar.ordinality(of: .year, in: .era, for: todayDate) else {
            return
        }
        let difference = end - start
        userAge.text = "\(difference)"
    }
}

