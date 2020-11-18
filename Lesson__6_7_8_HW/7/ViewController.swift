//
//  ViewController.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 05.11.2020.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var register: UIButton!
    @IBOutlet weak var login: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        register.layer.cornerRadius = 5
        register.setTitle( NSLocalizedString("Register", comment: "") , for: UIControl.State.normal)
        login.setTitle( NSLocalizedString("Login", comment: "") , for: UIControl.State.normal)
        image.image = UIImage(named: NSLocalizedString("flag", comment:""))
    }

    @IBAction func mr(_ sender: Any) {
        RouterScreen.switchToRegisterScreen2(self)
    }
    
    
   
  
    
    @IBAction func makeLogin(_ sender: Any) {
        RouterScreen.switchToLoginScreen2(self)
    }
    
   
}

