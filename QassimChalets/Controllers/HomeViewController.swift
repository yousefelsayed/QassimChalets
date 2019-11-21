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
    @IBOutlet weak var container: UIView!
       {
           didSet
           {
               self.container.layer.shadowColor = UIColor.rgb(5,0,0,0.13).cgColor
                      self.container.layer.shadowRadius = 9
                      self.container.layer.shadowOpacity = 1
                      self.container.layer.shadowOffset = CGSize(width: 0, height: 5)
           }
          
       }
    @IBOutlet weak var mapImage: UIImageView!
    {
        didSet{
                  
            
            
            self.mapImage.layer.shadowColor = UIColor.rgb(5,0,0,0.13).cgColor
            self.mapImage.layer.shadowRadius = 9
            self.mapImage.layer.shadowOpacity = 1
            self.mapImage.layer.shadowOffset = CGSize(width: 0, height: 5)
        }
    }
//    @IBOutlet weak var footerContainer: UIView!
//          {
//              didSet{
//
//
//
//                  self.footerContainer.layer.shadowColor = UIColor.rgb(5,0,0,0.13).cgColor
//                  self.footerContainer.layer.shadowRadius = 9
//                  self.footerContainer.layer.shadowOpacity = 1
//                  self.footerContainer.layer.shadowOffset = CGSize(width: 0, height: 5)
//              }
//          }
          @IBOutlet weak var middleContainer: UIView!
             {
                   didSet{

                           self.middleContainer.layer.shadowColor = UIColor.rgb(5,0,0,0.13).cgColor
                           self.middleContainer.layer.shadowRadius = 9
                           self.middleContainer.layer.shadowOpacity = 1
                           self.middleContainer.layer.shadowOffset = CGSize(width: 0, height: 9)
                       }
             }
    
    let pickerView: UIDatePicker = {
                                  let view = UIDatePicker()
                              view.layer.shadowColor = UIColor.rgb(5, 0, 0, 0.13).cgColor
                                  view.layer.shadowRadius = 14
                                  view.layer.shadowOffset = CGSize(width: 0, height: 9)
                                  view.layer.shadowOpacity = 1
                                  view.backgroundColor = .white
        let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 44))
            toolBar.layer.backgroundColor = UIColor.rgb(239, 178, 10).cgColor
            toolBar.layer.borderColor = UIColor.rgb(239, 178, 10,0.13).cgColor
            let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
            let cancelBarButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action:
            #selector(cancelBtnClicked(_:)))
        let doneBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(HomeViewController.donePressed))
        
            toolBar.setItems([cancelBarButton, flexibleSpace, doneBarButton], animated: false)

        view.addSubview(toolBar)
             return view
                   }()
    @objc func donePressed(sender: UIBarButtonItem) {
          
        textSearch?.resignFirstResponder()
          
      }
   @objc func cancelBtnClicked(_ button: UIBarButtonItem?)
  {
    textSearch?.resignFirstResponder()
    }
   
    @IBOutlet weak var searchBtn: UIButton!
       {
           didSet{
               searchBtn.layer.cornerRadius = 3
               searchBtn.layer.borderWidth = 1
           }
       }

//    @IBOutlet weak var inDate: UITextField!
//    {
//        didSet{
//            inDate.layer.borderColor = borderColor.cgColor
//                          inDate.layer.cornerRadius = 10
//                          inDate.layer.borderWidth = 1
//                          inDate.layer.backgroundColor = backgroundColor.cgColor
//                          imageView.image = image
//                          inDate.rightView = imageView
//                          inDate.rightViewMode = .always
//        }
//    }
   
  
    @objc func datePickerValueChanged(sender:UIDatePicker) {
        textSearch?.resignFirstResponder()
         //pickerView.isHidden = true
        
           let dateFormatter = DateFormatter()

           dateFormatter.dateStyle = DateFormatter.Style.medium

           dateFormatter.timeStyle = DateFormatter.Style.none
        print(dateFormatter.string(from: sender.date))
           textSearch.text = dateFormatter.string(from: sender.date)

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
        
        pickerView.addTarget(self, action: #selector(datePickerValueChanged(sender:)), for: .valueChanged)
           pickerView.isHidden = false
       }
    @IBOutlet weak var dateText: UITextField!
    
                   
             
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dateText.layer.borderColor = borderColor.cgColor
                                         self.dateText.layer.cornerRadius = 10
                                       self.dateText.layer.borderWidth = 1
                                         self.dateText.layer.backgroundColor = backgroundColor.cgColor
        
                                      
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
    var imageMap = UIImage(named: "map")
    @IBOutlet weak var typeButton: UIButton!
   
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
    
        @objc func doneButtonPressed(sender:UIDatePicker) {
     let dateFormatter = DateFormatter()

            dateFormatter.dateStyle = DateFormatter.Style.medium

            dateFormatter.timeStyle = DateFormatter.Style.none

            textSearch.text = dateFormatter.string(from: sender.date)
             self.textSearch.resignFirstResponder()
        }
    
}
