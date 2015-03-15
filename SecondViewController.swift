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
    @IBOutlet var seaonsTextfield: UITextField!
    @IBOutlet var groupsTextfield: UITextField!
    var clothesArray = NSMutableArray()
    
    //imageを取って来て
    var images:UIImage! = UIImage(named:"my_image")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = NSUserDefaults.standardUserDefaults()
        //for key はパスワードみたいなもので、復元するときに使うらしいです！
        var tmpArray:NSArray! = defaults.arrayForKey("key")
        
        //登録したデータを復元するフェーズをぬるぽさんが作ろうとしてたところ！
//        if (tmpArray.isEmpty){
//        clothesArray = KtmpArray.mutableCopy() as NSMutableArray
//        }
        self.view.addSubview(ImageView)
        //backgroundを透明にする
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
            //パーツの管理をどこがするか。
            //今回はコードを書いている所と同じ所で管理しているから、selfでおk！
            photoPick.delegate = self
            
            photoPick.sourceType = .PhotoLibrary
            //photoPickのためにpresentViewController を用意　selfはどこで使うかって言う問題。使うのはここだからおっけー
            //selfは省略可能
            //competition は、画面遷移の時に何をするか。今回は、nil何もしない
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
        var hogeDic: Dictionary = ["season": seaonsTextfield.text, "kind": groupsTextfield.text, "image":images]
        clothesArray.addObject(hogeDic)
        
        //UserDefaltsを使ってデータの保存
        //アプリを終了してもデータを維持する
        NSUserDefaults.standardUserDefaults().setObject(clothesArray, forKey: "key")
        NSUserDefaults.standardUserDefaults().synchronize()
    
    
    }
//    func imagePickerControllerDidCancel(picker: UIImagePickerController){
    
    //
     // NOTE
     // Swift nil is not the same as nil In Bbjective-C. In Bbjective-C,nil is a pointer to a nonexistent object.
     // In Swift ,nil is not a pointer - is is the absence of a value of a certain type....
     // Swiftのnilは「値がない」という定義なので
    
     // nil cannot be used with nonoptional  constant or variable in your code needs to work with the abcence of a value of the appropriate type.
    
    
    
//        println("canseled")
//    }

}
