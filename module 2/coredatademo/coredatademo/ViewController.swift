//
//  ViewController.swift
//  coredatademo
//
//  Created by Admin on 24/03/19.
//  Copyright © 2019 ACE. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var age: UITextField!
    func getContext()->NSManagedObjectContext
    {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        return
            appDel.persistentContainer.viewContext
    }
    
    @IBAction func add(_ sender: UIButton)
    {
        let context = getContext()
        
        let newEmp = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)
        newEmp.setValue(name.text, forKey: "name")
        newEmp.setValue(Int(age.text!), forKey: "age")
        do
        {
            try context.save()
        }
        catch
        {
            print("Error in Insert\(error.localizedDescription)")
            
        }
    }
    
    @IBAction func retrieve(_ sender: UIButton)
    {
        let fetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        do
        {
            let record = try getContext().fetch(fetch)
            for rec in record as! [NSManagedObject]
            {
                print(rec.value(forKey: "name")!, rec.value(forKey: "name")!)
            }
        }
        catch
        {
            print("Error in Insert\(error.localizedDescription)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last! as String)
        
    }


}

