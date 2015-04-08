//
//  ForthViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/02/28.
//  Copyright (c) 2015年 Karin. All rights reserved.
//


//seasonsとつながっています。

import UIKit

class ForthViewController: UIViewController {
//    @IBOutlet var buttonspring:UIButton!
//    @IBOutlet var buttonsummer:UIButton!
//    @IBOutlet var buttonautumn:UIButton!
//    @IBOutlet var buttonwinter:UIButton!
    
//
    var clothesArray = NSMutableArray()
    let defaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var loadArray:NSArray!
        
        
        var tmpArray:NSArray! = defaults.arrayForKey("key")
        
        //登録したデータを復元するフェーズをぬるぽさんが作ろうとしてたところ！
        if (tmpArray != nil){
            clothesArray = tmpArray.mutableCopy() as NSMutableArray
            println("load clothesArray %d",clothesArray.count)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
