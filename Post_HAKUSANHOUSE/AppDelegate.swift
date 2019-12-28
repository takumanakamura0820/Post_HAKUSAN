//
//  AppDelegate.swift
//  Post_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/07.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//

import UIKit
import NCMB
//
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    NCMB.setApplicationKey("3484aa795f534b39f47e7b2dd80a862cf215f6ba2269946c9636ead0587ecc50",clientKey:"9b2d721f80a37f8d3dd1552b9579f1d86cfe6b2cfa314e5e211bed44c72542e7")

       let ud = UserDefaults.standard
       let isLogin = ud.bool(forKey: "isLogin")
       let isStaff = ud.bool(forKey: "isStaff")
        
       
        if isLogin == true{
            if isStaff == true{
                //スタッフのログイン
                self.window = UIWindow(frame: UIScreen.main.bounds)
                let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
                let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
                self.window?.rootViewController = rootViewController
                self.window?.makeKeyAndVisible()
                self.window?.makeKeyAndVisible()
                return true
            }else{
                //ゲストのログイン
                self.window = UIWindow(frame: UIScreen.main.bounds)
                let storyboard = UIStoryboard(name: "Guest", bundle: Bundle.main)
                let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
                self.window?.rootViewController = rootViewController
                self.window?.backgroundColor = UIColor.white
                self.window?.makeKeyAndVisible()
                return true
            }
        }else{
            //ログインしていなかったら
            self.window = UIWindow(frame: UIScreen.main.bounds)
            let storyboard = UIStoryboard(name: "LogIn", bundle: Bundle.main)
            let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
            self.window?.rootViewController = rootViewController
            self.window?.backgroundColor = UIColor.white
            self.window?.makeKeyAndVisible()
            return true
        }
        //
        //        //スタッフ用のログインコード
//        if isStaff == true{
//            //ログイン中だったら
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
//            let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootTabController")
//            self.window?.rootViewController = rootViewController
//            self.window?.makeKeyAndVisible()
//            self.window?.makeKeyAndVisible()
//        }else{
//            //ログインしていなかったら
//            self.window = UIWindow(frame: UIScreen.main.bounds)
//            let storyboard = UIStoryboard(name: "Userpage", bundle: Bundle.main)
//            let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootViewController")
//            self.window?.rootViewController = rootViewController
//            self.window?.backgroundColor = UIColor.white
//            self.window?.makeKeyAndVisible()
//        }
//                    return true
//
//                }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}
}
