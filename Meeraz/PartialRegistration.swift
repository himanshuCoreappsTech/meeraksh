//
//  PartialRegistration.swift
//  Meeraz
//
//  Created by apple on 23/07/20.
//  Copyright © 2020 coreApps. All rights reserved.
//

import UIKit

class PartialRegistration: UIViewController {

    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var DOB: UITextField!
    @IBOutlet weak var Female: UIButton!
    @IBOutlet weak var male: UIButton!
    @IBOutlet weak var occupation: UIButton!
    
    @IBOutlet weak var job: UIButton!
    @IBOutlet weak var student: UIButton!
    @IBOutlet weak var business: UIButton!
    @IBOutlet weak var teacher: UIButton!
    @IBOutlet weak var housewife: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       DOB.addInputViewDatePicker(target: self, selector: #selector(doneButtonPressed))
       someUI()
       ocupationAndgenderUI()
            }
    
    
    @objc func doneButtonPressed() {
        if let  datePicker = self.DOB.inputView as? UIDatePicker {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            self.DOB.text = dateFormatter.string(from: datePicker.date)
        }
        self.DOB.resignFirstResponder()
     }
    
    func someUI(){
        FirstName.layer.cornerRadius = 16.0
        FirstName.layer.borderWidth = 1.0
        FirstName.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        lastname.layer.cornerRadius = 16.0
        lastname.layer.borderWidth = 1.0
        lastname.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        DOB.layer.cornerRadius = 16.0
        DOB.layer.borderWidth = 1.0
        DOB.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        FirstName.attributedPlaceholder = NSAttributedString(string: " First Name",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        lastname.attributedPlaceholder = NSAttributedString(string: " Last Name",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        DOB.attributedPlaceholder = NSAttributedString(string: " DOB (DD/MM/YY)",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])

    }
    
    func ocupationAndgenderUI(){
        Female.layer.borderColor = UIColor.black.cgColor
        Female.layer.borderWidth = 1.0
        Female.layer.cornerRadius = 16.0
        Female.layer.masksToBounds = true
        
        male.layer.borderColor = UIColor.black.cgColor
        male.layer.borderWidth = 1.0
        male.layer.cornerRadius = 16.0
        male.layer.masksToBounds = true
        
        occupation.layer.borderColor = UIColor.black.cgColor
        occupation.layer.borderWidth = 1.0
        occupation.layer.cornerRadius = 16.0
        occupation.layer.masksToBounds = true
        
        housewife.layer.borderColor = UIColor.black.cgColor
        housewife.layer.borderWidth = 1.0
        housewife.layer.cornerRadius = 16.0
        housewife.layer.masksToBounds = true
        
        teacher.layer.borderColor = UIColor.black.cgColor
        teacher.layer.borderWidth = 1.0
        teacher.layer.cornerRadius = 16.0
        teacher.layer.masksToBounds = true
        
        business.layer.borderColor = UIColor.black.cgColor
        business.layer.borderWidth = 1.0
        business.layer.cornerRadius = 16.0
        business.layer.masksToBounds = true
        
        student.layer.borderColor = UIColor.black.cgColor
        student.layer.borderWidth = 1.0
        student.layer.cornerRadius = 16.0
        student.layer.masksToBounds = true
        
        job.layer.borderColor = UIColor.black.cgColor
        job.layer.borderWidth = 1.0
        job.layer.cornerRadius = 16.0
        job.layer.masksToBounds = true
        
    }
    
    
    
    
    
    }
    

    



extension UITextField {

   func addInputViewDatePicker(target: Any, selector: Selector) {

    let screenWidth = UIScreen.main.bounds.width

    //Add DatePicker as inputView
    let datePicker = UIDatePicker(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 216))
    datePicker.datePickerMode = .date
    self.inputView = datePicker

    //Add Tool Bar as input AccessoryView
    let toolBar = UIToolbar(frame: CGRect(x: 0, y: 0, width: screenWidth, height: 44))
    let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    let cancelBarButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelPressed))
    let doneBarButton = UIBarButtonItem(title: "Done", style: .plain, target: target, action: selector)
    toolBar.setItems([cancelBarButton, flexibleSpace, doneBarButton], animated: false)

    self.inputAccessoryView = toolBar
 }

   @objc func cancelPressed() {
     self.resignFirstResponder()
   }
}
