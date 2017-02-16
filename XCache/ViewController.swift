//
//  ViewController.swift
//  XCache
//
//  Created by gong on 2017/1/10.
//  Copyright © 2017年 gong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CacheLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func readCache(_ sender: Any) {
        self.CacheLabel.text = XCache.returnCachSize()+"MB"
    }

    @IBAction func cleanCache(_ sender: Any) {
        XCache.cleanCache { 
            self.CacheLabel.text = XCache.returnCachSize()+"MB"
        }
    }
}

