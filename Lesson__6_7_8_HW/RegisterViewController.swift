//
//  RegisterViewController.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 15.11.2020.
//

import UIKit

class RegisterViewControlle : UIViewController, UIAdaptivePresentationControllerDelegate{
    
    @IBOutlet weak var registerView: UIView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var sirname: UITextField!
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var viewWithL: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var labelCondition: UILabel!
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.presentationController?.delegate = self
        self.modalPresentationStyle = .fullScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = loginButton.layer.frame.height / 2
        loginButton.layer.borderColor = CGColor(red: CGFloat(1), green: CGFloat(1), blue: CGFloat(1), alpha: CGFloat(0.3))
        loginButton.layer.borderWidth = 1
        
        viewWithL.layer.cornerRadius = 5
        
        mainView.layer.cornerRadius = 5
        mainView.layer.borderWidth = 2
        mainView.layer.borderColor = CGColor(red: CGFloat(0.93), green: CGFloat(0.93), blue: CGFloat(0.93), alpha: CGFloat(1))
        
        labelCondition.text = "Agree with terms \n and conditions"
        
        
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        var bt = name.bottomAnchor
        var ht = name.heightAnchor
        var abt =  (bt as NSLayoutAnchor)
        
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        .fullScreen
    }
    
    @IBAction func pushButton(_ sender: Any) {
        mainView.constraints.forEach{ item in
            if item.firstAnchor == name.bottomAnchor ||
                item.secondAnchor == name.bottomAnchor
                {
                NSLayoutConstraint.deactivate([item])
                item.constant = 60
                NSLayoutConstraint.activate([item])
            }
            
        }
        
    }
}
