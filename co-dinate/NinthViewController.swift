//
//  NinthViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/06.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class NinthViewController: UIViewController {
    var ope = 0


    override func viewDidLoad() {
        super.viewDidLoad()
        ope = 0
        pantsa.hidden = true
        pantsb.hidden = true
        pantsc.hidden = true
        pantsd.hidden = true

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var pantsa: UIImageView!
    @IBOutlet weak var pantsb: UIImageView!
    @IBOutlet weak var pantsc: UIImageView!
    @IBOutlet weak var pantsd: UIImageView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttoni(sender: UIButton) {
        ope = 1
    }
    @IBAction func buttonj(sender: UIButton) {
        ope = 2
    }
    @IBAction func buttonk(sender: UIButton) {
        ope = 3
    }
    @IBAction func buttonl(sender: UIButton) {
        ope = 4
    }
    
    @IBAction func hyouji(){
        
        switch (ope){
        case 0 :
            pantsa.hidden = true
            pantsb.hidden = true
            pantsc.hidden = true
            pantsd.hidden = true
            break
        case 1 :
            pantsa.hidden = false
            pantsb.hidden = true
            pantsc.hidden = true
            pantsd.hidden = true
            break
        case 2 :
            pantsa.hidden = true
            pantsb.hidden = false
            pantsc.hidden = true
            pantsc.hidden = true
            break
        case 3 :
            pantsa.hidden = true
            pantsb.hidden = true
            pantsc.hidden = false
            pantsd.hidden = true
            break
        case 4 :
            pantsa.hidden = true
            pantsb.hidden = true
            pantsc.hidden = true
            pantsd.hidden = false
            break
        default:
            break
        }

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}