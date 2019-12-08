//
//  SignInViewController.swift
//  QassimChalets
//
//  Created by Yousef on 12/7/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField
import Alamofire
import SwiftyJSON
class SignInViewController: Extensions , UITextFieldDelegate {
var iconTapped = false
    let HomeVc = HomeViewController()
    private let apiKey = "80051a6156d39bded7ae1671f1bc3457"
    

    @IBOutlet weak var container: UIView!
    let password = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 70, width: 315, height: 60))
    let userName = SkyFloatingLabelTextField(frame: CGRect(x: 10, y: 10, width: 315, height: 60))
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userName.delegate = self
        self.password.delegate = self
        userName.title = "بريدك الالكترونى"
        userName.placeholder = "بريدك الالكترونى"
        userName.textAlignment = .right
        userName.titleLabel.textAlignment = .right
        userName.selectedLineColor = UIColor.rgb(232.0, 232.0, 232.0)
        container.addSubview(userName)
        let image = UIImage(named: "hidden")
          let iconSecure = UIImageView(frame: CGRect(x: 20, y: 100, width: 15.8, height: 11))
          iconSecure.image = image
       
         
                  password.title = "كلمه المرور"
                  password.placeholder = "كلمه المرور"
                  password.textAlignment = .right
                  password.titleLabel.textAlignment = .right
                  password.selectedLineColor = UIColor.rgb(232.0, 232.0, 232.0)
                  password.isSecureTextEntry = true
               container.addSubview(password)
        container.addSubview(iconSecure)
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        iconSecure.isUserInteractionEnabled = true
        iconSecure.addGestureRecognizer(tapGestureRecognizer)
      
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    @IBAction func signInTapped(_ sender: Any) {
        guard let email = userName.text , !email.isEmpty  else {return}
        guard let password = password.text , !password.isEmpty  else {return}
        Api.login(email: email, password: password) { (error : Error?, success : Bool) in
            if success
            {
           let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HomeController") as? HomeViewController
                    self.navigationController?.pushViewController(vc!, animated: true)
                
            }
            else
            {
            }
        }
              
    }
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        if (iconTapped == false)
        {
            tappedImage.image = UIImage(named: "visible")
            iconTapped = true
            self.password.isSecureTextEntry.toggle()
            
            
        }
        else if (iconTapped == true )
        {
            tappedImage.image = UIImage(named: "hidden")
            iconTapped = false
           // self.password.isSecureTextEntry.toggle()
        }

        // Your action
    }

}
