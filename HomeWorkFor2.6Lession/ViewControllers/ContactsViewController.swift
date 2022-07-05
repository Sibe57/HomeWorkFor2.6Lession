//
//  ContactsViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 05.07.2022.
//

import UIKit

class ContactsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setGragient()
    }
    
    private func setGragient() {
        let gradient = CAGradientLayer()
        let colorTop = UIColor(displayP3Red: 0.5, green: 0, blue: 0.5, alpha: 0.6)
        let colorBottom = UIColor(displayP3Red: 0, green: 1, blue: 1, alpha: 0.5)
        gradient.frame = view.bounds
        gradient.colors = [colorTop.cgColor, colorBottom.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
}
