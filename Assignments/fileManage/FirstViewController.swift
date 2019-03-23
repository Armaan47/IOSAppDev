//
//  FirstViewController.swift
//  fileManage
//
//  Created by admin on 18/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    var caught = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //var mail = email.text
       //var pass = password.text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! secondViewController
        dest.caught = email.text!
    }
}

