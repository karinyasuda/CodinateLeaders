//
//  EightViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/06.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class EightViewController: UIViewController {
    var ope = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        ope = 0
        jacketa.hidden = true
        jacketb.hidden = true
        jacketc.hidden = true
        jacketd.hidden = true

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var jacketa: UIImageView!
    @IBOutlet weak var jacketb: UIImageView!
    @IBOutlet weak var jacketc: UIImageView!
    @IBOutlet weak var jacketd: UIImageView!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttone(sender: UIButton) {
        ope = 1
    }
    @IBAction func buttonf(sender: UIButton) {
        ope = 2
    }
    @IBAction func buttong(sender: UIButton) {
        ope = 3
    }
    @IBAction func buttonh(sender: UIButton) {
        ope = 4
    }
    
    @IBAction func hyouji(){
        
        switch (ope){
        case 0 :
            jacketa.hidden = true
            jacketb.hidden = true
            jacketc.hidden = true
            jacketd.hidden = true
            break
        case 1 :
            jacketa.hidden = false
            jacketb.hidden = true
            jacketc.hidden = true
            jacketd.hidden = true
            break
        case 2 :
            jacketa.hidden = true
            jacketb.hidden = false
            jacketc.hidden = true
            jacketc.hidden = true
            break
        case 3 :
            jacketa.hidden = true
            jacketb.hidden = true
            jacketc.hidden = false
            jacketd.hidden = true
            break
        case 4 :
            jacketa.hidden = true
            jacketb.hidden = true
            jacketc.hidden = true
            jacketd.hidden = false
            break
        default:
            break
        }
        
        
        
        
        
        
        
    }
    
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
