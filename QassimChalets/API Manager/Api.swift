//
//  Api.swift
//  QassimChalets
//
//  Created by Yousef on 12/8/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
class Api: NSObject {
    
    class func login(email : String , password : String ,  compiletion: @escaping(_ error : Error?,_ succsess : Bool) -> Void){
        let baseUrl = URLS.signin
               let params = ["email" : email
                   , "password" : password]
               AF.request(baseUrl, method: .post
                   , parameters: params)
                   .responseJSON{response in
                       switch response.result
                      {
                       case .failure(let error):
                        compiletion(error , true)
                       case .success(let value):
                        let json = JSON(value)
                        if  let api_token  = json["data"]["token"].string{
                                                   Helper.saveToken(api_token: api_token)
                                               }
                                               
                        
                          compiletion(nil , true)
                         
                           
                       }
               }
    }
    
    class func register(userName : String ,email : String , password : String ,phoneNumber : String ,passwordAgain : String,city :String , area : String ,  compiletion: @escaping(_ error : Error?,_ succsess : Bool) -> Void){
        let baseUrl = URLS.register
               let params = ["email" : email,
                    "new_password1" : password,
                     "new_password2" : passwordAgain,
                     "phone_number" : phoneNumber ,
                     "city" : city,
                     "area" : area,
                     "username" : userName]
               AF.request(baseUrl, method: .post
                   , parameters: params)
                   .responseJSON{response in
                       switch response.result
                      {
                       case .failure(let error):
                        compiletion(error , true)
                       case .success(let value):
                        let json = JSON(value)
                        if  let api_token  = json["data"]["token"].string{
                            Helper.saveToken(api_token: api_token)
                        }
                        
                        
                          compiletion(nil , true)
                         
                           
                       }
               }
    }
}
