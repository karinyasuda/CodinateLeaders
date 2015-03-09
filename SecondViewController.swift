//
//  SecondViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/02/27.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController ,UIImagePickerControllerDelegate ,UINavigationControllerDelegate{

    //写真をカメラロールから取ってくるだけのimageviwewです
    //最初は、ここからデータ保存できたらいいなと思っていたのですが、今はいらないかも知れません。
    //写真とテキストの連携が出来なければ、服の写真とテキストをひとつのimageにしてしまおうかなとも考えています。
    //季節ごとに分けてviewcontroller、imageviewをつくって、それぞれのimageviewに表示させるだけだったらできるかなとも考えています
    
    var ImageView = UIImageView(frame:CGRectMake(60, 150, 200, 200))
    //ボタンを設置
    @IBOutlet var pickBtn:UIButton!
    
    //imageを取って来て
    var images:UIImage! = UIImage(named:"my_image")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(ImageView)
        self.ImageView.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
//        self.ImageView.backgroundColor = UIColor.ColorWithAlphaComponent(0.5)
//        self.ImageView.layer.borderWidth = 1
    
        
        //ボタンの形を変える
        //角丸に。◯にしたい時には、ボタンのサイズとcornerRadiusの値の二倍を同じにするといい
        pickBtn.layer.cornerRadius = 10
             //↓もしかしたらこの一文いらないかも
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
    //ボタンのアクションの中身
        @IBAction func pickBtn(sender: UIButton) {
            //varで変数宣言　letだと定数宣言
            var photoPick = UIImagePickerController()
            photoPick.delegate = self
            
            photoPick.sourceType = .PhotoLibrary
            //photoPickのためにpresentViewController
            self.presentViewController(photoPick, animated: true, completion: nil)
            
            
    }
    //バックボタン
        @IBAction func goBack(sender: UIButton){
            self.dismissViewControllerAnimated(true, completion: nil)
    }
    //imageViewControllerのアクションを詳しく
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]){
        ImageView.image = info[UIImagePickerControllerOriginalImage]as? UIImage
        
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        var images:UIImage! = ImageView.image
        //hogeDicとして画像とテキストデータをセットにする！
        var hogeDic: Dictionary = ["name": images, "key2": "test"]
    }
//    func imagePickerControllerDidCancel(picker: UIImagePickerController){
//        println("canseled")
//    }

}
