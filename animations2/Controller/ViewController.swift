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
            menuBtn.setImage(UIImage(named: "MenuSelected"), for: .normal)
            setBtnHidden(false)
            UIView.animate(withDuration: 0.4) {
                self.setBtnAlpha(1)
                self.shuffleBtn.center = self.shuffleBtnCenter
                self.heartBtn.center = self.heartBtnCenter
                self.repeatBtn.center = self.repeatBtnCenter
            }
        } else {
            menuBtn.setImage(UIImage(named: "Menu"), for: .normal)
            UIView.animate(withDuration: 0.4, animations: {
                self.setBtnAlpha(0)
                self.shuffleBtn.center = self.menuBtn.center
                self.heartBtn.center = self.menuBtn.center
                self.repeatBtn.center = self.menuBtn.center
            }) { (true) in
                self.setBtnHidden(true)
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
    }
    
    func setBtnHidden(_ bool: Bool) {
        self.shuffleBtn.isHidden = bool
        self.heartBtn.isHidden = bool
        self.repeatBtn.isHidden = bool
    }
    
    func setBtnAlpha(_ float: CGFloat) {
        self.shuffleBtn.alpha = float
        self.heartBtn.alpha = float
        self.repeatBtn.alpha = float
    }
    
}

