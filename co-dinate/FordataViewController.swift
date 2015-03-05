//
//  fordataViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/05.
//  Copyright (c) 2015年 Karin. All rights reserved.
//


//最初につくったtableviewにつながってましたが、今はつながっているtableviewはありません

import UIKit

class Seasons : NSObject {

    var title : String = "seasons"
    var duration : NSTimeInterval = 0.0
    
}
extension Seasons {
    
    func durationString() -> String {
        return NSString(format:"%i:%02i",Int(self.duration) / 60, Int(self.duration) % 60)
    }
}
    // Do any additional setup after loading the view.

        // Dispose of any resources that can be recreated.
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
