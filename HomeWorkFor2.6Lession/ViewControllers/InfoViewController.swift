//
//  InfoViewController.swift
//  HomeWorkFor2.6Lession
//
//  Created by Федор Еронин on 05.07.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    var user: User!

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
