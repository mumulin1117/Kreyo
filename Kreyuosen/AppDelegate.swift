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

    static var localArtists:String?{
        get{
           
            return UserDefaults.standard.object(forKey: "localArtists") as? String
        }set{
            UserDefaults.standard.set(newValue, forKey: "localArtists")
            
        }
        
    }
    
    static var advancedTechnique:Int?{
        get{
            return UserDefaults.standard.object(forKey: "advancedTechnique") as? Int
        }set{
            UserDefaults.standard.set(newValue, forKey: "advancedTechnique")
        }
        
    }
    
    
    static func collaborativeProject() {
        if localArtists != nil {
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

   
    
   class func scumblingEffect(layeringTechnique:UIImageView,contrastRatio:String)  {
        guard let glassRecommender = URL(string: contrastRatio) else{
        
            return
        }
       
      
                
              
        // 使用 URLSession 异步加载图片
        URLSession.shared.dataTask(with: glassRecommender) {  data, response, error in
           
         
            guard
                let data = data,
                let image = UIImage(data: data)
            else {
               
                return
            }
            
            // 回到主线程更新 UI
            DispatchQueue.main.async {
                layeringTechnique.image = image
            }
        }.resume() // 启动网络请求
    }

}

