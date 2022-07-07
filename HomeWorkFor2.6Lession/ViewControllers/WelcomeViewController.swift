//
//  WelcomeViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 03.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var handLabel: UILabel!
    @IBOutlet var logoutButton: UIButton!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGragient()
        welcomeLabel.text = "Welcome, \(user.person.name)"
    }
    
    override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
        setAnimate()
    }
    
    private func setGragient() {
        let gradient = CAGradientLayer()
        let colorTop = UIColor(displayP3Red: 0.5, green: 0, blue: 0.5, alpha: 0.6)
        let colorBottom = UIColor(displayP3Red: 0, green: 1, blue: 1, alpha: 0.5)
        gradient.frame = view.bounds
        gradient.colors = [colorTop.cgColor, colorBottom.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    private func setAnimate() {
        welcomeLabel.alpha = 0
        handLabel.alpha = 0
        logoutButton.alpha = 0
        
        UIView.animate(withDuration: 0.2) {
            self.welcomeLabel.alpha = 1
            self.handLabel.alpha = 1
            self.logoutButton.alpha = 1
        }
    }
}
