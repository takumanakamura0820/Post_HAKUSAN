//
//  AnotherViewController.swift
//  Post_HAKUSANHOUSE
//
//  Created by Ryutaro Suda on 2019/10/20.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit

class AnotherViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    let storyboard: UIStoryboard = UIStoryboard(name: "ManagementViewController", bundle: nil)
    let next: UIViewController = storyboard.instantiateInitialViewController() as! UIViewController
    present(next, animated: true, completion: nil)
    }
}
