//
//  ViewController.swift
//  LoginLayout
//
//  Created by PondokIOS on 26/09/19.
//  Copyright © 2019 PondokIOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topConstraitReg: NSLayoutConstraint!
    
    @IBOutlet weak var topContrait: NSLayoutConstraint!
    
    @IBOutlet weak var ovoContrait: NSLayoutConstraint!
    
    @IBOutlet var splashScreen: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        topConstraitReg.constant = 1000
        topContrait.constant = 1000
        Timer.scheduledTimer(timeInterval: 4.0 , target: self, selector:#selector(removeSP), userInfo: nil, repeats: false)
    }
    
    @objc func removeSP()
    {
        splashScreen.removeFromSuperview()
    }

    @IBAction func dismmisSignIn(_ sender: Any) {
        ovoContrait.constant = 286
        topContrait.constant = 1000
        print("tutup")
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6 , initialSpringVelocity: 0 , options: .curveEaseOut ,animations: { self.view.layoutIfNeeded()} , completion: nil)
        
    }
    @IBAction func dismisSignUp(_ sender: Any) {
        ovoContrait.constant = 286
        topConstraitReg.constant = 1000
        print("tutup")
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6 , initialSpringVelocity: 0 , options: .curveEaseOut ,animations: { self.view.layoutIfNeeded()} , completion: nil)
        
    }
    @IBAction func showSignIn(_ sender: Any) {
        ovoContrait.constant = 100
        topContrait.constant = 340
        print("buka")
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6 , initialSpringVelocity: 0 , options: .curveEaseOut ,animations: { self.view.layoutIfNeeded()} , completion: nil)
    }
    @IBAction func showSignUp(_ sender: Any) {
        ovoContrait.constant = 100
        topConstraitReg.constant = 340
        print("buka")
        UIView.animate(withDuration: 0.2, delay: 0, usingSpringWithDamping: 0.6 , initialSpringVelocity: 0 , options: .curveEaseOut ,animations: { self.view.layoutIfNeeded()} , completion: nil)
    }
    
}

