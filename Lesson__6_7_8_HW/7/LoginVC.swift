//
//  LoginVC.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 06.11.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate{
    
    
   
    @IBOutlet weak var stayLoggedL: UILabel!
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var editLogin: UITextField!
    @IBOutlet weak var editPassword: UITextField!
    
    var regLogin: String = ""
    var regPassword : String = ""
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        editLogin.delegate = self
        editPassword.delegate = self
        login.setTitle(NSLocalizedString("Login", comment: ""), for: UIControl.State.normal)
        stayLoggedL.text = NSLocalizedString("stayLoggedL", comment: "")
        editLogin.placeholder = NSLocalizedString("Login", comment: "")
        editPassword.placeholder = NSLocalizedString("Register", comment: "")
        
    }
    @IBAction func editDidEndLogin(_ sender: Any) {
        regLogin = editLogin.text  ?? ""
    }
    
    
    
    @IBAction func editDidndEPassword(_ sender: Any) {
        regPassword = editPassword.text ?? ""
    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        
        if textField === self.editLogin{
            regLogin = editLogin.text ?? ""
        }
        if textField === self.editPassword{
            regPassword = editPassword.text ?? ""
        }
        
        return true
    }
    @IBAction func makeLogin(_ sender: Any) {
        var mess = ""
        if regLogin == "" || regPassword == ""{
            mess = NSLocalizedString("noAuth", comment: "")
        }
        else{
             mess = NSLocalizedString("Hi", comment: "")+" \(regLogin)"
        }
        RouterScreen.switchToAppScreen(self, mainLabelText: mess)
       
    }
   
    
}
