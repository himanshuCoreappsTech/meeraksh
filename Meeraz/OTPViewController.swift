//
//  OTPViewController.swift
//  Meeraz
//
//  Created by apple on 25/07/20.
//  Copyright © 2020 coreApps. All rights reserved.
//

import UIKit

class OTPViewController: UIViewController {

    
    @IBOutlet weak var one: UITextField!
    @IBOutlet weak var two: UITextField!
    @IBOutlet weak var three: UITextField!
    @IBOutlet weak var four: UITextField!
    @IBOutlet weak var five: UITextField!
    @IBOutlet weak var six: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUI()

       
    }
    
    func textFieldUI(){
        
        one.layer.cornerRadius = 16.0
        one.layer.borderWidth = 1.0
        one.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        
        two.layer.cornerRadius = 16.0
        two.layer.borderWidth = 1.0
        two.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        three.layer.cornerRadius = 16.0
        three.layer.borderWidth = 1.0
        three.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        four.layer.cornerRadius = 16.0
        four.layer.borderWidth = 1.0
        four.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        five.layer.cornerRadius = 16.0
        five.layer.borderWidth = 1.0
        five.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        six.layer.cornerRadius = 16.0
        six.layer.borderWidth = 1.0
        six.layer.borderColor = UIColor(red: 0.878, green: 0.878, blue: 0.878, alpha: 1).cgColor
        
        
    }
    
    
    @IBAction func resendOTP(_ sender: UIButton) {
    }
    
    
    
    @IBAction func verify(_ sender: UIButton) {
    }
    
    
    
    
    
    

}
