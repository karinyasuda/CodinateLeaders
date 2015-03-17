//
//  FifthViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/16.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var clothesArray = NSMutableArray()
    let defaults = NSUserDefaults.standardUserDefaults()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
