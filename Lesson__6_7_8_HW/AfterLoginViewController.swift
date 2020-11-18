//
//  AfterLoginViewController.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 13.11.2020.
//

import UIKit

class AfterLoginViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var imageBelowL: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        defineConstrains()
        image.image = UIImage(named: NSLocalizedString("flag", comment:""))
    }
    
    func defineConstrains(){
        
        redView.translatesAutoresizingMaskIntoConstraints = false
        greenView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        imageBelowL.translatesAutoresizingMaskIntoConstraints = false
        image.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        redView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0).isActive = true
        redView.widthAnchor.constraint(equalToConstant: view.frame.width * 40 / 100).isActive = true
        
        redView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        
        greenView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        greenView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        greenView.leftAnchor.constraint(equalTo: redView.rightAnchor, constant: 0).isActive = true
        
        greenView.rightAnchor.constraint(equalTo: blueView.leftAnchor, constant: 0).isActive = true
        
        
        
        blueView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
        blueView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0).isActive = true
        blueView.widthAnchor.constraint(equalToConstant: view.frame.width * 40 / 100).isActive = true
        blueView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
     
        imageBelowL.topAnchor.constraint(equalTo: redView.topAnchor, constant: 40).isActive = true
        imageBelowL.leftAnchor.constraint(equalTo: redView.leftAnchor, constant: 10).isActive = true
        imageBelowL.rightAnchor.constraint(equalTo: redView.rightAnchor, constant: -10).isActive = true
        
      
        image.widthAnchor.constraint(equalToConstant: (view.frame.width * 40 / 100)-10).isActive = true
        image.heightAnchor.constraint(equalTo: image.widthAnchor, multiplier: 1, constant: 0).isActive = true

        image.topAnchor.constraint(equalTo: imageBelowL.bottomAnchor, constant: 40).isActive = true
        image.leftAnchor.constraint(equalTo: redView.leftAnchor, constant: 10).isActive = true
        image.rightAnchor.constraint(equalTo: redView.rightAnchor, constant: -10).isActive = true
        
       

        
        
        
        print(image.frame.width)
        print (view.frame.width * 40 / 100)
    }
    
}


