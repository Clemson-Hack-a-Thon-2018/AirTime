//
//  LoginViewController.swift
//  AirTime
//
//  Created by Gary J. Baldwin on 9/6/18.
//  Copyright © 2018 Dynepic, Inc. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var continueAsGuestButton: UIButton!
    @IBOutlet weak var loginView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.sizeToFit()
        titleLabel.transform = titleLabel.transform.rotated(by: CGFloat(-(M_PI / 6)))
        continueAsGuestButton.backgroundColor = .clear
        continueAsGuestButton.layer.cornerRadius = continueAsGuestButton.frame.height / 2
        continueAsGuestButton.layer.borderWidth = 1
        continueAsGuestButton.layer.borderColor = UIColor.airtimeColors.yellow.cgColor
        //PPLoginButton handles all auth flow
        let loginButton = PPLoginButton.init()
        loginButton.center = CGPoint(x: loginView.bounds.size.width  / 2,
                                     y: loginView.bounds.size.height / 2)
        loginView.addSubview(loginButton)
    }
    
    @IBAction func continueAsGuestTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: nil, message: "Coming Soon!", preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}
