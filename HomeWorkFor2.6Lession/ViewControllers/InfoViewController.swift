//
//  InfoViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 05.07.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var sexLabel: UILabel!
    @IBOutlet var mainActivityLabel: UILabel!
    @IBOutlet var hobbiesLabel: UILabel!
    @IBOutlet var aboutLabel: UILabel!
    
    @IBOutlet var personImage: UIImageView!
    
    @IBOutlet var aboutTitleLabel: UILabel!
    @IBOutlet var hobbiesTitleLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        setGragient()
        setUserInfo()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setAnimate()
    }
    
    private func setUserInfo() {
        
        let person = user.person
        
        nameLabel.text = person.name.uppercased()
        surnameLabel.text = person.surname.uppercased()
        mainActivityLabel.text = person.mainActivity
        aboutLabel.text = person.about
        
        if let age = person.age {
            let lastDigitOfAge = age % 10
            let years: String
            switch lastDigitOfAge {
            case 0, 5...9:
                years = "лет"
            case 2...4:
                years = "года"
            default:
                years = "год"
            }
            ageLabel.text = "\(age) \(years)"
        } else {
            ageLabel = nil
        }
        
        if let isMale = person.isMale {
            sexLabel.text = isMale ? "Мужчина" : "Женщина"
        } else {
            sexLabel.text = nil
        }
        
        hobbiesLabel.text = person.hobbies.joined(separator: ", ")
        
        personImage.image = UIImage(named: person.photo)
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
        nameLabel.alpha = 0
        surnameLabel.alpha = 0
        ageLabel.alpha = 0
        sexLabel.alpha = 0
        mainActivityLabel.alpha = 0
        hobbiesLabel.alpha = 0
        aboutLabel.alpha = 0
        personImage.alpha = 0
        hobbiesTitleLabel.alpha = 0
        aboutTitleLabel.alpha = 0
        
        UIView.animate(withDuration: 0.2) {
            self.nameLabel.alpha = 1
            self.surnameLabel.alpha = 1
            self.ageLabel.alpha = 1
            self.sexLabel.alpha = 1
            self.mainActivityLabel.alpha = 1
            self.hobbiesLabel.alpha = 1
            self.aboutLabel.alpha = 1
            self.personImage.alpha = 1
            self.hobbiesTitleLabel.alpha = 1
            self.aboutTitleLabel.alpha = 1
        }
    }
}
