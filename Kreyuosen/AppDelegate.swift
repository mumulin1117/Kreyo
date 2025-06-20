//
//  AppDelegate.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/19.
//

import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    static var recycledMaterial:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "plogtopia") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "plogtopia")
            
        }
        
    }
    
    static func collaborativeProject() {
        if recycledMaterial != nil {
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Jaonufiuesd") as! UINavigationController
        }else{
           
            (UIApplication.shared.delegate as! AppDelegate).window?.rootViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SrteHuaopController") as! SrteHuaopController
        }
    }

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        AppDelegate.collaborativeProject()
        SwiftyStoreKit.completeTransactions(atomically: true) { _ in
            
        }
        window?.makeKeyAndVisible()
        return true
    }

   
    


}

