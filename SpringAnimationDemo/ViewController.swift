//
//  ViewController.swift
//  SpringAnimationDemo
//
//  Created by 張峻綸 on 2016/11/17.
//  Copyright © 2016年 張峻綸. All rights reserved.
//

import UIKit
import Spring
class ViewController: UIViewController {
    @IBOutlet weak var btnedOne: UIButton!
    @IBOutlet weak var viewOne: UIView!

    @IBOutlet weak var btnedThree: UIButton!

    @IBOutlet weak var viewTwo: SpringView!
    
    @IBOutlet weak var btnedTwo: UIButton!
    @IBOutlet weak var viewThree: SpringView!
    
    @IBOutlet weak var btnedFore: UIButton!

    @IBOutlet weak var viewTwoConstaint: NSLayoutConstraint!
    @IBOutlet weak var viewThreeConstaint: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        viewTwo.isHidden = true
    }

    @IBAction func btnedOne(_ sender: UIButton) {
        viewThree.isHidden = true
        viewTwoConstaint.constant = 0
        viewTwo.layoutIfNeeded()
        viewTwo.isHidden = false
        viewTwo.animation = "squeezeRight"
        viewTwo.curve = "easeInOut"
        self.viewTwo.duration = 1.5
        self.viewTwo.animate()
    }
    
    @IBAction func btnedTwo(_ sender: UIButton) {
        viewTwo.isHidden = true
        viewThreeConstaint.constant = 0
        viewThree.layoutIfNeeded()
        viewThree.isHidden = false
        viewThree.animation = "fadeInRight"
        viewThree.curve = "easeOut"
        self.viewThree.duration = 1.5
        self.viewThree.animate()
    }
    
    @IBAction func btnedThree(_ sender: UIButton) {
        
        
    }
    @IBAction func btnedFore(_ sender: UIButton) {
    }
    
    @IBAction func btnedCancel(_ sender: UIButton) {
        viewTwo.isHidden = true
        viewThree.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

