//
//  FriendCycleTableViewController.swift
//  XCache
//
//  Created by gong on 2017/2/13.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class FriendCycleTableViewController: UITableViewController {

    @IBOutlet weak var BackGroundButton: UIButton!
    @IBOutlet weak var UserNameButton: UIButton!
    @IBOutlet weak var HeadButton: UIButton!

    var data = [Friend(cellHeadImage: "head", cellUserName: "龚文明", cellText: "嘿嘿，😋", cellImages: "bg", cellTime: "1小时前"),
        Friend(cellHeadImage: "head", cellUserName: "张玲", cellText: "大家新年好", cellImages: "bg", cellTime: "2小时前"),
        Friend(cellHeadImage: "head", cellUserName: "吴哥", cellText: "元宵节快乐", cellImages: "bg", cellTime: "3小时前"),
        Friend(cellHeadImage: "head", cellUserName: "饭哥", cellText: "情人节快乐，情人节快乐，情人节快乐，情人节快乐，情人节快乐，情人节快乐，情人节快乐，情人节快乐，情人节快乐", cellImages: "bg", cellTime: "4小时前"),
        Friend(cellHeadImage: "head", cellUserName: "大鹏", cellText: "看花灯", cellImages: "bg", cellTime: "5小时前")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        tableView.backgroundColor = UIColor(white: 0.98, alpha: 1)
        tableView.separatorColor = UIColor(white: 0.9, alpha: 1)
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        tableView.estimatedRowHeight = 250
        tableView.rowHeight = UITableViewAutomaticDimension

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ChangeBackGround(_ sender: Any) {
        
        
    }
    
    @IBAction func ChangeBackGround2(_ sender: Any) {
        self.ChangeBackGround(sender)
    }
    @IBAction func ShowPersonDetail(_ sender: Any) {
        
    }
    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath) as! FriendCycleTableViewCell
        cell.backgroundColor = UIColor.clear
        
        cell.SmallHeadButton.setBackgroundImage(UIImage(named: data[indexPath.row].cellHeadImage), for: .normal)
        cell.CellUserNameButton.setTitle(data[indexPath.row].cellUserName, for: .normal)
        cell.CellTextLabel.text = data[indexPath.row].cellText
        cell.CellTimeLabel.text = data[indexPath.row].cellTime
        cell.CellTextImageButton.setBackgroundImage(UIImage(named:data[indexPath.row].cellImages), for: .normal)

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
