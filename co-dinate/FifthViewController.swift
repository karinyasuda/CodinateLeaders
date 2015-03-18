//
//  FifthViewController.swift
//  co-dinate
//
//  Created by Karin on 2015/03/16.
//  Copyright (c) 2015年 Karin. All rights reserved.
//

import UIKit

class FifthViewController: UITableViewController{
    var clothesArray = NSMutableArray()
    let defaults = NSUserDefaults.standardUserDefaults()
    
    @IBOutlet var swiftTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        var tmpArray:NSArray! = defaults.arrayForKey("key")
        
        //登録したデータを復元するフェーズをぬるぽさんが作ろうとしてたところ！
        if (tmpArray != nil){
            clothesArray = tmpArray.mutableCopy() as NSMutableArray
            println("load clothesArray %d",clothesArray.count)
        }
        
        swiftTable.delegate = self
        swiftTable.dataSource = self;

    }
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clothesArray.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = "Hello Swift"
        return cell
    }
    @IBAction func goBack(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
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
