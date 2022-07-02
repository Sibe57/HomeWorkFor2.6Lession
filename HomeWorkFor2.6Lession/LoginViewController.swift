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
    
    @IBOutlet weak var userNameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    private let userName = "Sibe57"
    private let password = "qwerty"
    
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
    
    @IBAction func forgotUserNameTapped() {
        let allert = UIAlertController(title: "Ooops!",
                                       message: "Your name is \(userName) 🧐",
                                       preferredStyle: .alert)
        
        let allertAction = UIAlertAction(title: "OK", style: .default)
        allert.addAction(allertAction)
        
        present(allert, animated: true)
    }
    
    
    @IBAction func forgotPasswordTapped() {
        let allert = UIAlertController(
            title: "Ooops!",
            message: "Your Password is \(password) 😉",
            preferredStyle: .alert
        )
        
        let allertAction = UIAlertAction(title: "OK", style: .default)
        allert.addAction(allertAction)
        
        present(allert, animated: true)
    }
    
}

