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
    
    private func showDefaultAllert(title: String,
                                   message: String,
                                   buttonTitle: String) {
        let allert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let allertAction = UIAlertAction(title: buttonTitle, style: .default)
        allert.addAction(allertAction)
        
        present(allert, animated: true)
    }
    
    @IBAction func forgotUserNameTapped() {
        showDefaultAllert(title: "Ooops!",
                          message: "Your username is \(userName) 😉",
                          buttonTitle: "OK")
    }
    
    @IBAction func forgotPasswordTapped() {
        showDefaultAllert(title: "Ooops!",
                          message: "Your password is \(password) 😉",
                          buttonTitle: "OK")
    }
    
    @IBAction func logInButtonTapped() {
        guard let userNameInput = userNameTF.text,
              let passwordInput = passwordTF.text else {
            showDefaultAllert(title: "Invalid login or password",
                              message: "Please enter correct login and password",
                              buttonTitle: "OK")
            return
        }
        if userNameInput == userName && passwordInput == password {
            
        } else {
            showDefaultAllert(title: "Invalid login or password",
                              message: "Please enter correct login and password",
                              buttonTitle: "OK")
            passwordTF.text = ""
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
}

