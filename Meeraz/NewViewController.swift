//
//  NewViewController.swift
//  Meeraz
//
//  Created by apple on 21/07/20.
//  Copyright © 2020 coreApps. All rights reserved.
//

import UIKit

class NewViewController: UIViewController {

  
    
    @IBOutlet weak var number: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     textField()
        
    }

    func textField () {
        number.layer.cornerRadius = 16.0
        number.layer.borderWidth = 1.0
        number.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        number.attributedPlaceholder = NSAttributedString(string: " Phone Number",
        attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
    }
    
    
    
}



