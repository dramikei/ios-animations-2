//
//  ViewController.swift
//  animations2
//
//  Created by Raghav Vashisht on 01/07/18.
//  Copyright © 2018 Raghav Vashisht. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var menuBtn: UIButtonX!
    @IBOutlet weak var heartBtn: UIButton!
    @IBOutlet weak var shuffleBtn: UIButton!
    @IBOutlet weak var repeatBtn: UIButton!
    
    var shuffleBtnCenter: CGPoint!
    var heartBtnCenter: CGPoint!
    var repeatBtnCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        saveBtnCenters()
    }
    
    @IBAction func menuBtnPressed(_ sender: Any) {
        if shuffleBtn.center == menuBtn.center {
            shuffleBtn.isHidden = false
            heartBtn.isHidden = false
            repeatBtn.isHidden = false
            UIView.animate(withDuration: 0.4) {
                self.shuffleBtn.alpha = 1
                self.heartBtn.alpha = 1
                self.repeatBtn.alpha = 1
                self.shuffleBtn.center = self.shuffleBtnCenter
                self.heartBtn.center = self.heartBtnCenter
                self.repeatBtn.center = self.repeatBtnCenter
            }
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                self.shuffleBtn.alpha = 0
                self.heartBtn.alpha = 0
                self.repeatBtn.alpha = 0
                self.shuffleBtn.center = self.menuBtn.center
                self.heartBtn.center = self.menuBtn.center
                self.repeatBtn.center = self.menuBtn.center
            }) { (true) in
                self.shuffleBtn.isHidden = true
                self.heartBtn.isHidden = true
                self.repeatBtn.isHidden = true
            }
        }
    }
    
    func saveBtnCenters() {
        shuffleBtnCenter = shuffleBtn.center
        heartBtnCenter = heartBtn.center
        repeatBtnCenter = repeatBtn.center
        
        shuffleBtn.center = menuBtn.center
        heartBtn.center = menuBtn.center
        repeatBtn.center = menuBtn.center
        
        shuffleBtn.alpha = 0
        heartBtn.alpha = 0
        repeatBtn.alpha = 0
        
        shuffleBtn.isHidden = true
        heartBtn.isHidden = true
        repeatBtn.isHidden = true
    }
    
}

