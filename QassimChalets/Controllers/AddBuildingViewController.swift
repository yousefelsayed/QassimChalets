//
//  AddBuildingViewController.swift
//  QassimChalets
//
//  Created by Yousef on 12/4/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
class AddBuildingViewController:  Extensions ,UITextFieldDelegate{

    @IBOutlet weak var container: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let  userNameText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 10, width: 315, height: 45))
        
       userNameText.placeholder = "اسم المستخدم"
       userNameText.title = "اسم المستخدم"
        userNameText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
        userNameText.textAlignment = .right
        userNameText.titleLabel.textAlignment = .right
        userNameText.selectedLineColor = .blue
        let  passwordText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 70, width: 315, height: 45))
         
        passwordText.placeholder = "كلمة المرور"
        passwordText.title = "كلمة المرور"
         passwordText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
         passwordText.textAlignment = .right
         passwordText.titleLabel.textAlignment = .right
         passwordText.selectedLineColor = .blue
        
        let  renterPasswordText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 130, width: 315, height: 45))
         
        renterPasswordText.placeholder = "اعادة كتابة كلمة المرور"
        renterPasswordText.title = "اعادة كتابة كلمة المرور"
         renterPasswordText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
         renterPasswordText.textAlignment = .right
         renterPasswordText.titleLabel.textAlignment = .right
         renterPasswordText.selectedLineColor = .blue
        container.addSubview(renterPasswordText)
        let  emailText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 190, width: 315, height: 45))
               
              emailText.placeholder = "بريدك الالكترونى"
              emailText.title = "بريدك الالكترونى"
               emailText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
               emailText.textAlignment = .right
               emailText.titleLabel.textAlignment = .right
               emailText.selectedLineColor = .blue
        container.addSubview(emailText)
        let  phoneText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 250, width: 315, height: 45))
               
              phoneText.placeholder = "رقم الجوال"
              phoneText.title = "رقم الجوال"
               phoneText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
               phoneText.textAlignment = .right
               phoneText.titleLabel.textAlignment = .right
               phoneText.selectedLineColor = .blue
        container.addSubview(phoneText)
        let  areaText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 310, width: 315, height: 45))
               
              areaText.placeholder = "اختر المنطقة"
              areaText.title = "اختر المنطقة"
               areaText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
               areaText.textAlignment = .right
               areaText.titleLabel.textAlignment = .right
               areaText.selectedLineColor = .blue
        container.addSubview(areaText)
        let  cityText = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 370, width: 315, height: 45))
                      
                     cityText.placeholder = "اختر المدينة"
                     cityText.title = "اختر المدينة"
                      cityText.lineColor = UIColor.rgb(232.0, 232.0, 232.0)
                      cityText.textAlignment = .right
                      cityText.titleLabel.textAlignment = .right
                      cityText.selectedLineColor = .blue
        container.addSubview(cityText)
       self.container.addSubview(userNameText)
        container.addSubview(passwordText)
        
        
    }
   
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
