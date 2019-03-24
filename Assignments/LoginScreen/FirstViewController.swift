//
//  FirstViewController.swift
//  fileManage
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

var emailadd = ""
var passkey = ""
class FirstViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var caught = ""
    
    func call()
    {
        UserDefaults.standard.set(email.text!,forKey:"email")
        UserDefaults.standard.set(password.text!,forKey:"pwd")
        emailadd = UserDefaults.standard.object(forKey:"email") as! String
        passkey = UserDefaults.standard.object(forKey:"pwd") as! String
    }
    
    @IBAction func login(_ sender: UIButton)
    {
        call()
        if emailadd == email.text && passkey == password.text
        {
            performSegue(withIdentifier: "segue2", sender: sender)
        } 
        else
        {
            email.text = nil
            email.placeholder = "Wrong Email Address"
            email.backgroundColor = UIColor.red
            password.text = nil
            password.placeholder = "Wrong Password"
            password.backgroundColor = UIColor.red
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var mail = email.text
       //var pass = password.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let dest = segue.destination as! secondViewController
        dest.caught = emailadd
        
    }
}

