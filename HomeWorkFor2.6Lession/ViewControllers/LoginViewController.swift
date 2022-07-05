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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.delegate = self
        passwordTF.delegate = self
        setObservers()
        setButtonsLabels()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as?
                WelcomeViewController else { return }
        
        welcomeViewController.userName = userNameTF.text
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
        
        if userNameTF.text == userName && passwordTF.text == password {
            performSegue(withIdentifier: "toWelcomeScreen", sender: nil)
        } else {
            showDefaultAllert(title: "Invalid login or password",
                              message: "Please enter correct login and password",
                              buttonTitle: "OK")
            passwordTF.text = ""
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func setObservers() {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    private func setButtonsLabels() {
        forgotUserNameButton.contentHorizontalAlignment = .left
        forgotPasswordButton.contentHorizontalAlignment = .right

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
}

//MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if view.frame.origin.y == 0 {
            view.frame.origin.y -= 100
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if view.frame.origin.y != 0 {
            view.frame.origin.y = 0
        }
    }
}

