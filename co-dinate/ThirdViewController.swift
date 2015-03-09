//
//  ThirdViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/02/27.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
//,UITableViewDataSource ,UITableViewDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    //いまstoryboardにあるtableviewの内容はここに書いてあります！
    //ですがこれを入力した時に、 
    //cell.textLabel.text = "\(indexPath.row)"    return cell  のrowのあとにエラーがでてしまって、
    //　　;  を追加してくださいと言われるのですが必要なくてコメントアウトしてしまいました
//    
//    //行数
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 10
//    
//    }
//    //表示するセルの中身
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        var cell = UITableViewCell(style: .Default, reuseIdentifier: "myCell")
//        cell.textLabel.text = "\(indexPath.row)"    return cell
//    }
//    //選択されたときに行う処理
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        println("\(indexPath.row)行数を選択")
//    }
//    //ステータスバーを非表示にする
//    override func prefersStatusBarHidden() -> Bool {
//        return true
//    }
//
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
