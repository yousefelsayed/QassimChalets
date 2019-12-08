//
//  URLS.swift
//  QassimChalets
//
//  Created by Yousef on 12/8/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import Foundation
struct URLS {
  static let baseUrl = "https://qassimchalets.com/"
    //Post ( email , password)
  static let signin = baseUrl + "authentication/user/login/"
    //Post (username , email , phone_number , new_password1 , new_password2 , city , area )
  static let register = baseUrl + "authentication/user/create/"
    
}
