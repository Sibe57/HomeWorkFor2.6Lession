//
//  ViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 02.07.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtonsLabels()
    }
    
    private func setButtonsLabels() {
        forgotUserNameButton.contentHorizontalAlignment = .left
        forgotPasswordButton.contentHorizontalAlignment = .right
        forgotPasswordButton.titleLabel?.numberOfLines = 2
        forgotUserNameButton.titleLabel?.numberOfLines = 2
    }
}

