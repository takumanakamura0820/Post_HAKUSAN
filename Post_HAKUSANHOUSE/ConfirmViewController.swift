//
//  UIPickerViewDay.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/21.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController{
    @IBOutlet var luggegeNumberLabel : UILabel!
    @IBOutlet var luggegeTypeLabel : UILabel!
    @IBOutlet var roomNumberLabel : UILabel!
    @IBOutlet var storedAtLabel : UILabel!
    
    // ここで受け取る
    var passedLuggegeNumber:String = ""
    var passedLuggegeType :String = ""
    var passedRoomNumber :String = ""
    var passedStoredAt :String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        luggegeNumberLabel.text = passedLuggegeNumber
        luggegeTypeLabel.text = passedLuggegeType
        roomNumberLabel.text = passedRoomNumber
        storedAtLabel.text = passedStoredAt
        
    }
    }


