//
//  SighUpViewController.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/08.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit
import NCMB
    //
class SighUpViewController: UIViewController,UITextFieldDelegate {
        @IBOutlet var nameTextField: UITextField!
//        @IBOutlet var roomTextField: UITextField!
        @IBOutlet var emailTextField:UITextField!
        @IBOutlet var passwordTexitField:UITextField!
        @IBOutlet var confirmTextField:UITextField!
    //
        override func viewDidLoad() {
            super.viewDidLoad()
    //
            nameTextField.delegate = self
//            roomTextField.delegate = self
            emailTextField.delegate = self
            passwordTexitField.delegate = self
            confirmTextField.delegate = self
    //
        }
    //
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    //
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }
    
    @IBAction func signUp(){
        if (nameTextField.text?.count)! <= 1 {
            print("文字数が足りません")
        }else{
            if passwordTexitField.text != confirmTextField.text{
                print("パスワードの不一致")
                
            }else{
                let user = NCMBUser()
                user.userName = nameTextField.text!
                user.mailAddress = emailTextField.text!
//                user.roomNumber = roomTextField.text!
                user.password = passwordTexitField.text!
                user.signUpInBackground {(error)in
                    if error != nil{
                        //エラーがあった場合
                        print("送れてないよ")
                    }else{
                        //登録成功
                        //ココ変更伝える
                        let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
                        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
                        
                        UIApplication.shared.keyWindow?.rootViewController = rootViewController
                        //
                        //ログイン状態の保持
                        let ud = UserDefaults.standard
                        ud.set(true, forKey: "isLogin")
                        ud.set(true, forKey: "isStaff")
                        ud.synchronize()
                    }
                    
                }
            }
        }
    }
            }

//        @IBAction func signUp(){
//            let user = NCMBUser()
//            user.userName = nameTextField.text!
//            user.mailAddress = roomTextFiels.text!
//
//            if (nameTextField.text?.count)! >= 4 {
//                print("文字数が足りません")
//                return
//            }
//    //
//            user.userName = nameTextField.text!
//            user.mailAddress = roomTextFiels.text!
//    //
//            if passwordTexitField.text == confirmTextField.text{
//                user.password = passwordTexitField.text!
//            }else{
//                print("パスワードの不一致")
//           }
//            user.signUpInBackground {(error)in
//                if error != nil{
//                    //エラーがあった場合
//                    print(error)
//                }else{
//                    //登録成功
//                    let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
//                    let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootTabBarController")
//
//                    UIApplication.shared.keyWindow?.rootViewController = rootViewController
//    //
//                    //ログイン状態の保持
//                    let ud = UserDefaults.standard
//                    ud.set(true, forKey: "isLogin")
//                    ud.synchronize()
//                }
//
//            }
//    //
//        }


