
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
        
        
//        let btn:UIButton? = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton;
//        btn!.frame = CGRectMake(100, 0, 100, 100);
////        btn!.setImage(img, forState: UIControlState.Normal);
//        btn!.addTarget(self, action: "onClick:", forControlEvents: UIControlEvents.TouchUpInside);
//        
        Button1.layer.cornerRadius = 10
        self.view.addSubview(Button1)
        Button1.layer.borderWidth = 1
        Button2.layer.cornerRadius = 10
        self.view.addSubview(Button2)
        Button2.layer.borderWidth = 1
        Button3.layer.cornerRadius = 10
        self.view.addSubview(Button3)
        Button3.layer.borderWidth = 1
        
        
        
        
        
//
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        //RoudedRect
        // Dispose of any resources that can be recreated.
        
        
        
        
        
    }
    
////    @IBAction func wardrobe(){
////        var nex : AnyObject! = Main.storyboard.
////           FifthViewControllerWithIdentifier("Wardrobe")
////        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
////        
////    }
//    @IBAction func showCoverVertical(sender: AnyObject){
//        let FifthView = FifthViewController()
//        modalView.modalTransitionStyle = UIModalTransitionStyle.Wardrobe
//        self.presentViewController(modalView, animated: true, completion: nil)
//    }
//    @IBAction func showCoverVertical(sender: AnyObject){
//        let modalView = ForthViewController()
//        modalView.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
//        self.presentViewController(modalView, animated: true, completion: nil)
//    }
////    @IBAction func seasons(){
////        var nex : AnyObject! = self.storyboard.
////            SeasonsViewControllerWithIdentifier("Seasons")
////        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
////        
////    }
//    
//    @IBAction func anewitem(){
//        var nex : AnyObject! = self.storyboard.
//            NewViewControllerWithIdentifier("New")
//        self.presentViewController(nex as UIViewController, animated: true, completion: nil)
//        
//    }
    //add commment
}