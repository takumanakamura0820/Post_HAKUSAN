//
//  Signin.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/14.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit
import NCMB

class SignInViewController: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet var userIdTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        userIdTextField.delegate = self
        passwordTextField.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    //ゲスト用
    @IBAction func sighin(){
        
        if (userIdTextField.text?.count)! > 0 &&
            (passwordTextField.text?.count)! > 0 {
            NCMBUser.logInWithUsername(inBackground: userIdTextField.text!, password: passwordTextField.text!){(user,error)in
                if error != nil{
                    print("ログイン失敗")
                }else{
                    //ログイン成功
                    let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
                    let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
                    
                    UIApplication.shared.keyWindow?.rootViewController = rootViewController
                    //ログイン状態の保持
                    
                    let ud = UserDefaults.standard
                    ud.set(true, forKey: "isLogin")
                    ud.set(true, forKey: "isStaff")
                    ud.synchronize()
                    
                }
                
            }
            
        }
    }
    
    //スタッフ用
    @IBAction func sighStaff(){
        
        if (userIdTextField.text?.count)! > 0 &&
            (passwordTextField.text?.count)! > 0 {
            NCMBUser.logInWithUsername(inBackground: userIdTextField.text!, password: passwordTextField.text!){(user,error)in
                if error != nil{
                    print("ログイン失敗")
                }else{
                    //ログイン成功
                    let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
                    let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
                    
                    UIApplication.shared.keyWindow?.rootViewController = rootViewController
                    //ログイン状態の保持
                    
                    let ud = UserDefaults.standard
                    ud.set(true, forKey: "isLogin")
                    ud.set(true, forKey: "isStaff")
                    ud.synchronize()
                    
                }
                
            }
            
        }
    }
    @IBAction func forgetPassword(){
        //置いておく
    }
    
    @IBAction func staffsignin(){
        let storyboard: UIStoryboard = UIStoryboard(name: "ManagementViewController", bundle: nil)
        let next: UIViewController = storyboard.instantiateInitialViewController() as! UIViewController
        present(next, animated: true, completion: nil)
    }
    
    @IBAction func katteniSiginIn(){
        let storyboard = UIStoryboard(name:"Main",bundle: Bundle.main)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
        
        UIApplication.shared.keyWindow?.rootViewController = rootViewController
        //ログイン状態の保持
        
        let ud = UserDefaults.standard
        ud.set(true, forKey: "isLogin")
        ud.set(true, forKey: "isStaff")
        ud.synchronize()
    }
    
}

