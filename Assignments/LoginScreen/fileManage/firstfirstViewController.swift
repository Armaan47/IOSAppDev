//
//  firstfirstViewController.swift
//  fileManage
//
//  Created by Admin on 22/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class firstfirstViewController: UIViewController {
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var emailadd: UITextField!
    
    @IBOutlet weak var pass1: UITextField!
    
    func savadata()
    {
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.removeObject(forKey: "email")
        UserDefaults.standard.removeObject(forKey: "passsword")
        UserDefaults.standard.set(username.text, forKey: "username")
        UserDefaults.standard.set(emailadd.text, forKey: "email")
        UserDefaults.standard.set(pass1.text, forKey: "password")
    }
    
    @IBAction func signup(_ sender: UIButton)
    {
        if username.text == "" && pass1.text == "" && emailadd.text == ""
        {
            username.text = nil
            username.placeholder = "enter name"
            username.backgroundColor = UIColor.red
            emailadd.text = nil
            emailadd.placeholder = "Enter data"
            emailadd.backgroundColor = UIColor.red
            pass1.text = nil
            pass1.placeholder = "Enter data"
            pass1.backgroundColor = UIColor.red
            
        }
        else
        {
            savadata()
            performSegue(withIdentifier: "segue1", sender: sender)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
        if segue.identifier == "segue1"
        {
            let destination = segue.destination as! secondViewController
            destination.caught = emailadd.text!

        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    


}
