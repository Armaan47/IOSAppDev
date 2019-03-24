//
//  ViewController.swift
//  userdefaultDemo
//
//  Created by Admin on 24/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var mytext: UITextField!
    
    @IBAction func save(_ sender: UIButton)
    {
        UserDefaults.standard.set(mytext.text, forKey: "text")
        let savedata = UserDefaults.standard.object(forKey: "text") as! String
        print(savedata)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "text") != nil
        {
             mytext.text = (UserDefaults.standard.object(forKey: "text") as! String)
            
        }
    }


}

