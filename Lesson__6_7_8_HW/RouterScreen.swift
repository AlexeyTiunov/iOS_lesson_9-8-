//
//  RouterScreen.swift
//  Lesson__6_7_8_HW
//
//  Created by admin on 06.11.2020.
//

import UIKit

class RouterScreen :UIViewController {
    
    
    public static func switchToAddUserScreen(_ caller: UIViewController){
        
        if  let controller = getController(name: "scr5",storybordName: "Second")
        {
         controller.modalPresentationStyle = .fullScreen
         callViewC(caller,callee: controller)
        }
        
    }
    public static func switchToLoginScreen2(_ caller: UIViewController){
        
        if  let controller = getController(name: "scr4",storybordName: "Second")
        {
         controller.modalPresentationStyle = .fullScreen
         callViewC(caller,callee: controller)
        }
        
    }
    public static func switchToRegisterScreen2(_ caller: UIViewController){
        
        if  let controller = getController(name: "scr6",storybordName: "Second")
        {
         controller.modalPresentationStyle = .fullScreen
         callViewC(caller,callee: controller)
        }
        
    }
    public static func switchToLoginScreen(_ caller: UIViewController){
        
        if  let controller = getController(name: "scr3")
        {
         controller.modalPresentationStyle = .fullScreen
         callViewC(caller,callee: controller)
        }
        
    }
   public  static func switchToRegisterScreen(_ caller: UIViewController){
        
    if  let controller = getController(name: "scr2")
    {
        controller.modalPresentationStyle = .fullScreen
        callViewC(caller,callee: controller)
    }
    }
    public  static func switchToAppScreen(_ caller: UIViewController, mainLabelText: String){
        if  let controller = getController(name: "scr1")
       {
            (controller as? AppViewController)?.mainLableText = mainLabelText
        controller.modalPresentationStyle = .fullScreen
         callViewC(caller,callee: controller)
       }
        
       
    }
    
   
    
    private static func callViewC(_ caller: UIViewController,callee : UIViewController){
        caller.present(callee, animated: true, completion: nil)
    }
    
    private static func getController(name : String , storybordName :  String = "Main") -> UIViewController?{
        let storyboard = UIStoryboard(name: storybordName, bundle:.main)
        // let registerScreen: UIViewController?
        
        if  let registerScreen : UIViewController? = storyboard.instantiateViewController(identifier: name)
        {
          return registerScreen
        }
        return nil
    }
    
}
