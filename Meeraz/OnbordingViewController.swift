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
    
    var slides:[scrollView] = [];
    
    @IBOutlet weak var pageController: UIPageControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        slides = createSlides()
               setupSlideScrollView(slides: slides)
               
               pageController.numberOfPages = slides.count
               pageController.currentPage = 0
            view.bringSubviewToFront(pageController)

        // Do any additional setup after loading the view.
    }

   func createSlides() -> [scrollView] {

        let slide1:scrollView = Bundle.main.loadNibNamed("scroll", owner: self, options: nil)?.first as! scrollView
         slide1.tutorial.image = UIImage(named: "first")
//        slide1.labelTitle.text = "A real-life bear"
//        slide1.labelDesc.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide2:scrollView = Bundle.main.loadNibNamed("scroll", owner: self, options: nil)?.first as! scrollView
        slide2.tutorial.image = UIImage(named: "second")
//        slide2.labelTitle.text = "A real-life bear"
//        slide2.labelDesc.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
        
        let slide3:scrollView = Bundle.main.loadNibNamed("scroll", owner: self, options: nil)?.first as! scrollView
        slide3.tutorial.image = UIImage(named: "Splash")
//        slide3.labelTitle.text = "A real-life bear"
//        slide3.labelDesc.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
//
        let slide4:scrollView = Bundle.main.loadNibNamed("scroll", owner: self, options: nil)?.first as! scrollView
        slide4.tutorial.image = UIImage(named: "third")
//        slide4.labelTitle.text = "A real-life bear"
//        slide4.labelDesc.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
//

            let slide5:scrollView = Bundle.main.loadNibNamed("scroll", owner: self, options: nil)?.first as! scrollView
            slide4.tutorial.image = UIImage(named: "third")
    //        slide4.labelTitle.text = "A real-life bear"
    //        slide4.labelDesc.text = "Did you know that Winnie the chubby little cubby was based on a real, young bear in London"
    //
        
       
        return [slide1, slide2, slide3, slide4, slide5]
    }
    
    func setupSlideScrollView(slides : [scrollView]) {
        scroll.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        scroll.contentSize = CGSize(width: view.frame.width * CGFloat(slides.count), height: view.frame.height)
        scroll.isPagingEnabled = true
        
        for i in 0 ..< slides.count {
            slides[i].frame = CGRect(x: view.frame.width * CGFloat(i), y: 0, width: view.frame.width, height: view.frame.height)
            scroll.addSubview(slides[i])
        }
    }
      func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let pageIndex = round(scrollView.contentOffset.x/view.frame.width)
            pageController.currentPage = Int(pageIndex)
            
            let maximumHorizontalOffset: CGFloat = scrollView.contentSize.width - scrollView.frame.width
            let currentHorizontalOffset: CGFloat = scrollView.contentOffset.x
            
            // vertical
            let maximumVerticalOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.height
            let currentVerticalOffset: CGFloat = scrollView.contentOffset.y
            
            let percentageHorizontalOffset: CGFloat = currentHorizontalOffset / maximumHorizontalOffset
            let percentageVerticalOffset: CGFloat = currentVerticalOffset / maximumVerticalOffset
            
            
            /*
             * below code changes the background color of view on paging the scrollview
             */
    //        self.scrollView(scrollView, didScrollToPercentageOffset: percentageHorizontalOffset)
            
        
            /*
             * below code scales the imageview on paging the scrollview
             */
            let percentOffset: CGPoint = CGPoint(x: percentageHorizontalOffset, y: percentageVerticalOffset)
            
            if(percentOffset.x > 0 && percentOffset.x <= 0.25) {
                
                slides[0].tutorial.transform = CGAffineTransform(scaleX: (0.25-percentOffset.x)/0.25, y: (0.25-percentOffset.x)/0.25)
                slides[1].tutorial.transform = CGAffineTransform(scaleX: percentOffset.x/0.25, y: percentOffset.x/0.25)
                
            } else if(percentOffset.x > 0.25 && percentOffset.x <= 0.50) {
                slides[1].tutorial.transform = CGAffineTransform(scaleX: (0.50-percentOffset.x)/0.25, y: (0.50-percentOffset.x)/0.25)
                slides[2].tutorial.transform = CGAffineTransform(scaleX: percentOffset.x/0.50, y: percentOffset.x/0.50)
                
            } else if(percentOffset.x > 0.50 && percentOffset.x <= 0.75) {
                slides[2].tutorial.transform = CGAffineTransform(scaleX: (0.75-percentOffset.x)/0.25, y: (0.75-percentOffset.x)/0.25)
                slides[3].tutorial.transform = CGAffineTransform(scaleX: percentOffset.x/0.75, y: percentOffset.x/0.75)
                
            } else if(percentOffset.x > 0.75 && percentOffset.x <= 1) {
                slides[3].tutorial.transform = CGAffineTransform(scaleX: (1-percentOffset.x)/0.25, y: (1-percentOffset.x)/0.25)
                slides[4].tutorial.transform = CGAffineTransform(scaleX: percentOffset.x, y: percentOffset.x)
            }
        }
    
    
    func scrollView(_ scrollView: UIScrollView, didScrollToPercentageOffset percentageHorizontalOffset: CGFloat) {
        if(pageController.currentPage == 0) {
            //Change background color to toRed: 103/255, fromGreen: 58/255, fromBlue: 183/255, fromAlpha: 1
            //Change pageControl selected color to toRed: 103/255, toGreen: 58/255, toBlue: 183/255, fromAlpha: 0.2
            //Change pageControl unselected color to toRed: 255/255, toGreen: 255/255, toBlue: 255/255, fromAlpha: 1
            
            let pageUnselectedColor: UIColor = fade(fromRed: 255/255, fromGreen: 255/255, fromBlue: 255/255, fromAlpha: 1, toRed: 103/255, toGreen: 58/255, toBlue: 183/255, toAlpha: 1, withPercentage: percentageHorizontalOffset * 3)
            pageController.pageIndicatorTintColor = pageUnselectedColor
        
            
            let bgColor: UIColor = fade(fromRed: 103/255, fromGreen: 58/255, fromBlue: 183/255, fromAlpha: 1, toRed: 255/255, toGreen: 255/255, toBlue: 255/255, toAlpha: 1, withPercentage: percentageHorizontalOffset * 3)
            slides[pageController.currentPage].backgroundColor = bgColor
            
            let pageSelectedColor: UIColor = fade(fromRed: 81/255, fromGreen: 36/255, fromBlue: 152/255, fromAlpha: 1, toRed: 103/255, toGreen: 58/255, toBlue: 183/255, toAlpha: 1, withPercentage: percentageHorizontalOffset * 3)
            pageController.currentPageIndicatorTintColor = pageSelectedColor
        }
    }
    
  func fade(fromRed: CGFloat,
              fromGreen: CGFloat,
              fromBlue: CGFloat,
              fromAlpha: CGFloat,
              toRed: CGFloat,
              toGreen: CGFloat,
              toBlue: CGFloat,
              toAlpha: CGFloat,
              withPercentage percentage: CGFloat) -> UIColor {
        
        let red: CGFloat = (toRed - fromRed) * percentage + fromRed
        let green: CGFloat = (toGreen - fromGreen) * percentage + fromGreen
        let blue: CGFloat = (toBlue - fromBlue) * percentage + fromBlue
        let alpha: CGFloat = (toAlpha - fromAlpha) * percentage + fromAlpha
        
        // return the fade colour
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    
    
    @IBAction func next(_ sender: UIButton) {
    }
    
    


}
