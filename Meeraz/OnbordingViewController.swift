//
//  OnbordingViewController.swift
//  Meeraz
//
//  Created by apple on 23/07/20.
//  Copyright © 2020 coreApps. All rights reserved.
//

import UIKit

class OnbordingViewController: UIViewController, UIScrollViewDelegate {

    
    @IBOutlet weak var scroll: UIScrollView! {
        didSet {
            scroll.delegate = self
        }
    }
    
    
    @IBOutlet weak var pageController: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
