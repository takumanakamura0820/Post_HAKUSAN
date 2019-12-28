//
//  ViewController.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/07.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit

class AlertViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showAlert(){
        //アラートの表示
        let alert = UIAlertController(title:"通知",message:"郵便物があります",preferredStyle:.alert)
        
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            
            alert.dismiss(animated: true, completion:nil)
        }
        
        alert.addAction(action)
        self.present(alert, animated:true, completion:nil)
    }
    
}

