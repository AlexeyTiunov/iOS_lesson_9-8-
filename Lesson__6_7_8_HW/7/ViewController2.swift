//
//  ViewController2.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 06.11.2020.
//

import UIKit

class ViewController2: UIViewController{
    
    
    @IBOutlet weak var registerB: UIButton!
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
        registerB?.layer.cornerRadius = 5
        registerB.setTitle( NSLocalizedString("Register", comment: "") , for: UIControl.State.normal)
        editLogin.placeholder = NSLocalizedString("Login", comment: "")
        editPassword.placeholder = NSLocalizedString("Register", comment: "")
    }
    @IBAction func editDidEndLogin(_ sender: Any) {
        regLogin = editLogin.text  ?? ""
    }
    
    
    
    @IBAction func editDidndEPassword(_ sender: Any) {
        regPassword = editPassword.text ?? ""
    }
    
    @IBAction func makeRegister(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
}
