//
//  Helper.swift
//  QassimChalets
//
//  Created by Yousef on 12/8/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit

class Helper: NSObject {
    class func restartApp()
    {
        guard let window = UIApplication.shared.keyWindow else {return}
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeController") as? HomeViewController
                         
        window.rootViewController = vc
        UIView.transition(with: window, duration: 0.5, options: .transitionCurlUp, animations: nil, completion: nil)
    }
    class func saveToken(api_token : String)
    {
        let def = UserDefaults.standard
        def.set(api_token, forKey: "token")
        def.synchronize()
        restartApp()
    }
    class func getApi() -> String?
    {
        let def = UserDefaults.standard
       return  def.object(forKey: "token") as? String
        
    }
}
