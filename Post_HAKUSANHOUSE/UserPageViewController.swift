//
//  Userpage.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/08.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit
import NCMB
//
class UserPageViewController: UIViewController {
//
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func showMenu(){
        let alertController = UIAlertController(title: "メニュー", message: "メニューを選択してください", preferredStyle:.actionSheet)
       let signOutAction = UIAlertAction(title: "ログアウト", style:.default){(action)in
            NCMBUser.logOutInBackground({(error)in
                if error != nil{
                     print()
                }else{
                    //ログアウト成功
                    let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
                    let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootTabBarController")
                    UIApplication.shared.keyWindow?.rootViewController = rootViewController

                    //ログイン状態の保持
                    let ud = UserDefaults.standard
                    ud.set(false, forKey: "isLogin")
                    ud.synchronize()
                }
            })
        }
       let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel){(signOutAction)in
            alertController.dismiss(animated: true, completion: nil)
        }

        alertController.addAction(signOutAction)
        alertController.addAction(cancelAction)

        self.present(alertController,animated: true,completion: nil)
    }

}
