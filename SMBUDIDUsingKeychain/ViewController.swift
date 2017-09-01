//
//  ViewController.swift
//  SMBUDIDUsingKeychain
//
//  Created by Apinun Wongintawang on 9/1/17.
//  Copyright © 2017 True. All rights reserved.
//

import UIKit
import FCUUID

class ViewController: UIViewController {
    @IBOutlet weak var labelUdid: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        labelUdid.text = SMBUUID.uuidString()
        let fcuuid = FCUUID.uuidForDevice
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

