//
//  ViewController.swift
//  DesignLayoutTemplate
//
//  Created by Rudra Sankar Misra on 23/03/19.
//  Copyright © 2019 rudra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    var flag = false
    var i = 1
    
    @IBOutlet weak var birdImage: UIImageView!
    @IBAction func flyBird(_ sender: UIButton) {
        if (flag){
            timer.invalidate()
            flag = false
            sender.setBackgroundImage(UIImage(named:"Play_Button"), for: .normal)
        }else{
            timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { (timer) in
                self.birdImage.image = UIImage(named: "\(self.i)")
                if self.i < 15{
                    self.i += 1
                }else{
                    self.i = 1
                }
            }
            flag = true
            sender.setBackgroundImage(UIImage(named:"Pause_Button"), for: .normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

