//
//  FriendCycleTableViewCell.swift
//  XCache
//
//  Created by gong on 2017/2/13.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class FriendCycleTableViewCell: UITableViewCell {

    @IBOutlet weak var SmallHeadButton: UIButton!
    @IBOutlet weak var CellUserNameButton: UIButton!
    @IBOutlet weak var CellTextLabel: UILabel!
    @IBOutlet weak var CellTextImageButton: UIButton!
    @IBOutlet weak var CellTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    @IBAction func ShowDetail(_ sender: Any) {
        
    }
    

    @IBAction func ShowDetail2(_ sender: Any) {
        self.ShowDetail(sender)
    }
    
    
    @IBAction func PingLun(_ sender: Any) {
        
    }
}
