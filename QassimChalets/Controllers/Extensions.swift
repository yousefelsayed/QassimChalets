//
//  PickerController.swift
//  QassimChalets
//
//  Created by Yousef on 11/14/19.
//  Copyright © 2019 Yousef. All rights reserved.
//

import UIKit

class Extensions: UIViewController {
    
    private let pickerView: UIDatePicker = {
        let view = UIDatePicker()
        view.layer.shadowColor = UIColor.rgb(0, 0, 0, 0.13).cgColor
        view.layer.shadowRadius = 14
        view.layer.shadowOffset = CGSize(width: 0, height: 9)
        view.layer.shadowOpacity = 1
        view.backgroundColor = .white
        return view
    }()
    
     func setupUI() {
        view.backgroundColor = .white
    }
    
     func setupSubViews() {
        view.addSubview(pickerView)
    }
    
//  func setupConstraints() {
//        pickerView.centerInSuperView
//        pickerView.set(width: 300, height: 300)
//    }
}

extension UIColor {
    
    class func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat, _ alpha: CGFloat = 1) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
    
}
extension UIView {
    
    func centerInSuperview() {
       self.translatesAutoresizingMaskIntoConstraints = false
        self.centerHorizontallyInSuperview()
        self.centerVerticallyInSuperview()
    }
    
    func centerHorizontallyInSuperview(){
        let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .centerX, relatedBy: .equal, toItem: self.superview, attribute: .centerX, multiplier: 1, constant: 0)
        self.superview?.addConstraint(c)
    }
    
    func centerVerticallyInSuperview(){
        let c: NSLayoutConstraint = NSLayoutConstraint(item: self, attribute: .centerY, relatedBy: .equal, toItem: self.superview, attribute: .centerY, multiplier: 1, constant: 0)
        self.superview?.addConstraint(c)
    }
    
}
extension UIToolbar {

func ToolbarPiker(mySelect : Selector) -> UIToolbar {

    let toolBar = UIToolbar()

    toolBar.barStyle = UIBarStyle.default
    toolBar.isTranslucent = true
    toolBar.tintColor = UIColor.black
    toolBar.sizeToFit()

    let doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItem.Style.plain, target: self, action: mySelect)
    let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)

    toolBar.setItems([ spaceButton, doneButton], animated: false)
    toolBar.isUserInteractionEnabled = true

    return toolBar
}

}
   
//    func setPaddingWithImage(image: UIImage, textField: UITextField){
//        let imageView = UIImageView(image: image)
//        imageView.contentMode = .scaleAspectFit
//        let view = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 50))
//        imageView.frame = CGRect(x: 13.0, y: 13.0, width: 14.0, height: 13.0)
//        //For Setting extra padding other than Icon.
//        let seperatorView = UIView(frame: CGRect(x: 50, y: 0, width: 10, height: 50))
//        seperatorView.backgroundColor = UIColor(red: 80/255, green: 89/255, blue: 94/255, alpha: 1)
//        view.addSubview(seperatorView)
//        textField.rightViewMode = .always
//        view.addSubview(imageView)
//        view.backgroundColor = .white
//        textField.rightViewMode = UITextField.ViewMode.always
//        textField.rightView = view
//    }

//     @objc func doneDatePickerPressed() {
//
//        view.endEditing(true)
//
//    }
//    func createUIToolBar() {
//
//        pickerToolbar = UIToolbar()
//        pickerToolbar?.autoresizingMask = .flexibleHeight
//
//        //customize the toolbar
//        pickerToolbar?.barStyle = .default
//        pickerToolbar?.barTintColor = UIColor.black
//        pickerToolbar?.backgroundColor = UIColor.white
//        pickerToolbar?.isTranslucent = false
//
//        //add buttons
//        let cancelButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action:
//            #selector(cancelBtnClicked(_:)))
//        cancelButton.tintColor = UIColor.white
//        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
//        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action:
//            #selector(ViewController.doneBtnClicked(_:)))
//        doneButton.tintColor = UIColor.white
//
//        //add the items to the toolbar
//        pickerToolbar?.items = [cancelButton, flexSpace, doneButton]
//
//    }
//
//    @objc func cancelBtnClicked(_ button: UIBarButtonItem?) {
//        dateTextField?.resignFirstResponder()
//    }
//
//    @objc func doneBtnClicked(_ button: UIBarButtonItem?) {
//        dateTextField?.resignFirstResponder()
//        let formatter = DateFormatter()
//        formatter.dateStyle = .short
//        dateTextField?.text = formatter.string(from: datePicker.date)
//    }


