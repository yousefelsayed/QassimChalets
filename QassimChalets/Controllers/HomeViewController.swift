//
//  ViewController.swift
//  QassimChalets
//
//  Created by Yousef on 11/4/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit
import DropDown
import DatePickerDialog
class HomeViewController:  PickerController {
    let pickerView: UIDatePicker = {
                                  let view = UIDatePicker()
                              view.layer.shadowColor = UIColor.rgb(5, 0, 0, 0.13).cgColor
                                  view.layer.shadowRadius = 14
                                  view.layer.shadowOffset = CGSize(width: 0, height: 9)
                                  view.layer.shadowOpacity = 1
                                  view.backgroundColor = .white

             return view
                   }()
  
   
    @IBOutlet weak var searchBtn: UIButton!
       {
           didSet{
               searchBtn.layer.cornerRadius = 3
               searchBtn.layer.borderWidth = 1
           }
       }

       @objc func datePickerValueChanged(sender:UIDatePicker) {

           let dateFormatter = DateFormatter()

           dateFormatter.dateStyle = DateFormatter.Style.medium

           dateFormatter.timeStyle = DateFormatter.Style.none

        //   textSearch.text = dateFormatter.string(from: sender.date)

       }
       let borderColor = UIColor(displayP3Red: 239.0/255.0, green: 178.0/255.0, blue: 10.0/255.0, alpha: 1.0)
       @IBOutlet weak var textSearch: UITextField!
       {
           didSet{
               textSearch.layer.borderColor = borderColor.cgColor
               textSearch.layer.cornerRadius = 10
               textSearch.layer.borderWidth = 1
               textSearch.layer.backgroundColor = backgroundColor.cgColor
               imageView.image = image
               textSearch.rightView = imageView
               textSearch.rightViewMode = .always
           }
       }
       @IBOutlet weak var buttonView: UIView! {
           didSet {
               
               buttonView.layer.cornerRadius = 10
               buttonView.layer.borderWidth = 1
               buttonView.layer.borderColor = borderColor.cgColor
               buttonView.layer.backgroundColor = backgroundColor.cgColor
           }
       }
       @IBOutlet weak var cityText: UITextField!
       {
           didSet{
               cityText.layer.borderWidth = 1
               cityText.layer.cornerRadius = 10
               cityText.layer.borderColor = borderColor.cgColor
           }
       }
      
    @IBAction func dateOutTapped(_ sender: UITextField!) {
           pickerView.isHidden = false
       }
    override func viewDidLoad() {
        super.viewDidLoad()
    pickerView.timeZone = .current
    pickerView.locale = Locale(identifier: "ar")
                     pickerView.datePickerMode = UIDatePicker.Mode.date
                    view.addSubview(pickerView)
                    pickerView.centerInSuperview()
    pickerView.isHidden = true
    }
   
    let dropdown = DropDown()
    let dropDownView = UIView()
    let imageView = UIImageView(frame: CGRect(x: 119, y: 418, width: 15, height: 14))
    var image = UIImage(named: "search")
    @IBOutlet weak var typeButton: UIButton!
    @IBOutlet weak var container: UIView!
    let customColor = UIColor(displayP3Red: 239.0/255.0, green: 178.0/255.0, blue: 10.0/255.0, alpha: 1.0)
    let backgroundColor = UIColor(displayP3Red: 242.0/255.0, green: 242.0/255.0, blue: 242.0/255.0, alpha: 1.0)
    @IBAction func typeTapped(_ sender: Any) {
        dropdown.anchorView = container
        dropdown.dataSource = ["الكل", "شاليه", "استراحه","منتجع","مخيم"]
        dropdown.direction = .bottom
        DropDown.appearance().backgroundColor = backgroundColor
        DropDown.appearance().selectionBackgroundColor = customColor
        DropDown.appearance().cellHeight = 36
      
      //  typeButton.titleLabel?.value(forKey: dropdown.selectedItem!)
  DropDown.appearance().setupCornerRadius(10)
  dropdown.show()
    }
    
}
