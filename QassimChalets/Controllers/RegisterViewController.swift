//
//  RegisterViewController.swift
//  QassimChalets
//
//  Created by Yousef on 12/8/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
class RegisterViewController: UIViewController {

    let usernameTF  : SkyFloatingLabelTextField! = {
     let  userNameText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 10, width: 315, height: 45))
         
        userNameText.placeholder = "اسم المستخدم"
        userNameText.title = "اسم المستخدم"
         userNameText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
         userNameText.textAlignment = .right
         userNameText.titleLabel.textAlignment = .right
         userNameText.selectedLineColor = .blue
        return userNameText
    }()
    let passwordTF : SkyFloatingLabelTextField! = {
        let  passwordText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 70, width: 315, height: 45))
          
         passwordText.placeholder = "كلمة المرور"
         passwordText.title = "كلمة المرور"
          passwordText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
          passwordText.textAlignment = .right
          passwordText.titleLabel.textAlignment = .right
          passwordText.selectedLineColor = .blue
        passwordText.isSecureTextEntry = true
        return passwordText
    }()
    let passwordAgain : SkyFloatingLabelTextField! = {
        let  renterPasswordText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 130, width: 315, height: 45))
                
               renterPasswordText.placeholder = "اعادة كتابة كلمة المرور"
               renterPasswordText.title = "اعادة كتابة كلمة المرور"
                renterPasswordText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
                renterPasswordText.textAlignment = .right
                renterPasswordText.titleLabel.textAlignment = .right
                renterPasswordText.selectedLineColor = .blue
              renterPasswordText.isSecureTextEntry = true
        return renterPasswordText
    }()
    let email : SkyFloatingLabelTextField! = {
        let  emailText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 190, width: 315, height: 45))
                       
                      emailText.placeholder = "بريدك الالكترونى"
                      emailText.title = "بريدك الالكترونى"
                       emailText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
                       emailText.textAlignment = .right
                       emailText.titleLabel.textAlignment = .right
                       emailText.selectedLineColor = .blue
               emailText.keyboardType = UIKeyboardType.emailAddress
        return emailText
    }()
    let phoneNumber : SkyFloatingLabelTextField! = {
        let  phoneText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 250, width: 315, height: 45))
            let label = UILabel(frame: CGRect(x: 295, y: 250, width: 315, height: 45))
      //  label.text = "+996"
              phoneText.placeholder = "رقم الجوال"
              phoneText.title = "رقم الجوال"
               phoneText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
               phoneText.textAlignment = .right
               phoneText.titleLabel.textAlignment = .right
               phoneText.selectedLineColor = .blue
        phoneText.addSubview(label)
       
        return phoneText
        
    }()
    let area : SkyFloatingLabelTextField! = {
        let  areaText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 310, width: 315, height: 45))
                      
                     areaText.placeholder = "اختر المنطقة"
                     areaText.title = "اختر المنطقة"
                      areaText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
                      areaText.textAlignment = .right
                      areaText.titleLabel.textAlignment = .right
                      areaText.selectedLineColor = .blue
        return areaText
    }()
    let city : SkyFloatingLabelTextField! = {
        let  cityText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 370, width: 315, height: 45))
         
        cityText.placeholder = "اختر المدينة"
        cityText.title = "اختر المدينة"
         cityText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
         cityText.textAlignment = .right
         cityText.titleLabel.textAlignment = .right
         cityText.selectedLineColor = .blue
        return cityText
    }()
    @IBOutlet weak var container: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
               container.addSubview(passwordAgain)
               container.addSubview(phoneNumber)
               container.addSubview(email)
               container.addSubview(area)
               container.addSubview(city)
               container.addSubview(usernameTF)
               container.addSubview(passwordTF)
         
    }
    
    @IBAction func registerPressed(_ sender: Any) {
        guard let username = usernameTF?.text,
            let password = passwordTF?.text,let passwordConfirm = passwordAgain?.text ,  let area = area?.text ,
                       let phoneNumber = phoneNumber?.text,
                       !area.isEmpty , !phoneNumber.isEmpty ,
            let city = city?.text ,!city.isEmpty,
             let email = email?.text ,!email.isEmpty,
            !username.isEmpty , !password.isEmpty ,!passwordConfirm.isEmpty
        else {return}
        guard password == passwordConfirm   else {return}
          
        Api.register(userName: username, email: email, password: password, phoneNumber: phoneNumber, passwordAgain: passwordConfirm, city: city, area: area) { (error :Error?, success :Bool) in
            if success{
                
            }
            else{
                
            }
        }
    }
    

}
