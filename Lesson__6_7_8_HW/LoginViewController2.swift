//
//  LoginViewController2.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 13.11.2020.
//

import UIKit

class LoginViewController2: UIViewController {
    
    
    @IBOutlet weak var loginView: UIView!
    @IBOutlet var loginButton: UIView!
    @IBOutlet weak var plusButton: UIButton!
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        plusButton.layer.cornerRadius = plusButton.layer.frame.height / 2
        loginButton.layer.cornerRadius = plusButton.layer.frame.height / 2
        plusButton.layer.borderWidth = 1
        plusButton.layer.borderColor = CGColor(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1), alpha: CGFloat(0.3))
        loginButton.layer.borderWidth = 1
        loginButton.layer.borderColor = CGColor(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1), alpha: CGFloat(0.3))
//        loginView.layer.borderWidth = 1
//        loginView.layer.borderColor = CGColor(red: CGFloat(0.7), green: CGFloat(0.7), blue: CGFloat(0.7), alpha: CGFloat(1.0))
        loginView.layer.borderColor = CGColor(red: CGFloat(1.0), green: CGFloat(1.0), blue: CGFloat(1.0), alpha: CGFloat(1.0))
        loginView.layer.cornerRadius = 10
        
        
    }
    
    @IBAction func addUser(_ sender: Any) {
        RouterScreen.switchToAddUserScreen(self)
    }
    
}
