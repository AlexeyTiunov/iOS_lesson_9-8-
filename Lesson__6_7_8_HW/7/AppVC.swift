//
//  AppVC.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 07.11.2020.
//

import UIKit

class AppViewController : UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    var mainLableText : String = ""
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mainLabel.text = mainLableText
    }
    
    @IBAction func back(_ sender: Any) {
        RouterScreen.switchToLoginScreen(self)
    }
}
