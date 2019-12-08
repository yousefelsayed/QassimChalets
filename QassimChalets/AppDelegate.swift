//
//  AppDelegate.swift
//  QassimChalets
//
//  Created by Yousef on 11/4/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {


    let window: UIWindow? = nil
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        if let api_token = Helper.getApi()
        {
            print(api_token)
            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeController") as? HomeViewController
                             
            window?.rootViewController = vc
        }
        return true
    }



}

