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
        loginView.layer.cornerRadius = 5
        loginView.layer.borderWidth = 2
        loginView.layer.borderColor = CGColor(red: CGFloat(0.93), green: CGFloat(0.93), blue: CGFloat(0.93), alpha: CGFloat(1))
        
        
        
    }
    
    @IBAction func addUser(_ sender: Any) {
        RouterScreen.switchToAddUserScreen(self)
    }
    
}
