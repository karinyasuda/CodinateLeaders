//
//  ViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/02/24.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var Button1:UIButton!
    @IBOutlet var Button2:UIButton!
    @IBOutlet var Button3:UIButton!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        Button1.layer.cornerRadius = 10
        self.view.addSubview(Button1)
        Button1.layer.borderWidth = 1
        Button2.layer.cornerRadius = 10
        self.view.addSubview(Button2)
        Button2.layer.borderWidth = 1
        Button3.layer.cornerRadius = 10
        self.view.addSubview(Button3)
        Button3.layer.borderWidth = 1
        
      
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //add commment 
}