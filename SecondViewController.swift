//
//  SecondViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/02/27.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate{

    var ImageView = UIImageView(frame:CGRectMake(35, 100, 250, 250))
    
    @IBOutlet var pickBtn:UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(ImageView)
        self.ImageView.backgroundColor = UIColor.orangeColor()
//        self.ImageView.backgroundColor = UIColor.ColorWithAlphaComponent(0.5)
        self.ImageView.layer.borderWidth = 1
    
        pickBtn.layer.cornerRadius = 10
        self.view.addSubview(pickBtn)
        pickBtn.layer.borderWidth = 1
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
        @IBAction func pickBtn(sender: UIButton) {
            var photoPick = UIImagePickerController()
            photoPick.delegate = self
            photoPick.sourceType = .PhotoLibrary
            self.presentViewController(photoPick, animated: true, completion: nil)
            
        }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]){
        ImageView.image = info[UIImagePickerControllerOriginalImage]as? UIImage
        self.dismissViewControllerAnimated(true, completion: nil)
    }
//    func imagePickerControllerDidCancel(picker: UIImagePickerController){
//        println("canseled")
//    }

}
