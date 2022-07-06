//
//  ContactsViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 05.07.2022.
//

import UIKit
// пытаюсь руками создать небольшой аналог тейбл вью)
class ContactsViewController: UIViewController {

    @IBOutlet var urlViews: [UIView]!
    @IBOutlet var urlLabels: [UILabel]!
    @IBOutlet var urlImages: [UIImageView]!
    
    @IBOutlet var urlStack: UIStackView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet weak var noContactsLabel: UILabel!
    
    var contacts: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setGragient()
        setUrls()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
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
    
    private func setUrls() {
        if let contacts = contacts {
            for index in contacts.indices {
                guard index < 5 else { break }
                urlViews[index].isHidden = false
                urlLabels[index].text = contacts[index]
                urlImages[index].image = setPhoto(for: contacts[index])
            }
        } else {
            noContactsLabel.isHidden = false
        }
    }
    
    private func setPhoto(for url: String) -> UIImage? {
        if url.range(of: "https://t.me",
                     options: .caseInsensitive,
                     range: nil,
                     locale: nil) != nil {
            return UIImage(named: "tgLogo")
        } else if url.range(of: "https://vk",
                            options: .caseInsensitive,
                            range: nil,
                            locale: nil) != nil {
            return UIImage(named: "vkLogo")
        } else if url.range(of: "@",
                            options: .caseInsensitive,
                            range: nil,
                            locale: nil) != nil {
            return UIImage(named: "mailLogo")
        } else if url.range(of: "https://github",
                            options: .caseInsensitive,
                            range: nil,
                            locale: nil) != nil {
            return UIImage(named: "ghLogo")
        } else if url.range(of: "https://facebook.com",
                            options: .caseInsensitive,
                            range: nil,
                            locale: nil) != nil {
            return UIImage(named: "fbLogo")
        }
        return nil
    }
    
    private func setAnimate() {
        titleLabel.alpha = 0
        urlStack.alpha = 0
        noContactsLabel.alpha = 0
        UIView.animate(withDuration: 0.20) {
            self.titleLabel.alpha = 1
            self.urlStack.alpha = 1
            self.noContactsLabel.alpha = 1
        }
    }
}
