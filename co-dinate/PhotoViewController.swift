//
//  photoViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/05.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var img_view: UIImageView!
    var n:UInt32!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func image_update()->String{
        
        var file:String = ""
        n = arc4random() % 3 + 1;
        switch(n){
        case 1:
            file = "skirt.jpg"
            break;
        case 2:
            file = "skirt2.jpg"
            break;
        default:
            file = "skirt3.jpg"
            break;
        }
        
        return file
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
