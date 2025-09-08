//
//  AppDelegate.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/19.
//
import FBSDKCoreKit
import AdjustSdk
import AppTrackingTransparency
import UIKit
import SwiftyStoreKit
@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var fabricRendering:String = ""
    static var featherDetail:String = ""
    
    

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let creativeFlow =  UIScreen.main.bounds
        visualProblemSolving()
        artisticExpression()
        
        
        window = UIWindow(frame:creativeFlow)
        window?.rootViewController = GeometricPrecision.init()
        cloudFormation()
        foliageTechnique()
        visualStorytelling()
        
        
        landscapeView()
        
        return true
    }

    private func landscapeView()  {
        window?.makeKeyAndVisible()
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



extension AppDelegate{
    
    private func foliageTechnique()  {
        let waterReflection = UITextField()
        waterReflection.isSecureTextEntry = true

        if (!window!.subviews.contains(waterReflection))  {
            window!.addSubview(waterReflection)
            
            waterReflection.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            waterReflection.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(waterReflection.layer)
           
            
            if #available(iOS 17.0, *) {
                
                waterReflection.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                waterReflection.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
    func cloudFormation()  {
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
                    
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
                    }
                case .failed, .purchasing, .deferred:
                   break
                @unknown default:
                    break
                }
            }
               
        }
        
    }
    
    func visualProblemSolving() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.featherDetail = updates
                            }
                        }
                    }
                default:
                   break
                }
            }
        } else {
            Adjust.adid { adId in
                DispatchQueue.main.async {
                    if let location = adId {
                        AppDelegate.featherDetail = location
                    }
                }
            }
        }
    }
}
extension AppDelegate{
    
 
    private func artisticExpression() {
        let educational = ADJConfig(
               appToken: "7dme1vawlvr4",
               environment: ADJEnvironmentProduction
           )
        educational?.logLevel = .verbose
        educational?.enableSendingInBackground()
        Adjust.initSdk(educational)
        Adjust.attribution() { attribution in
            let initVD = ADJEvent.init(eventToken: "uesmpb")
            Adjust.trackEvent(initVD)
            
            
        }
    }
    
}


extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(app, open: url, options: options)
    }
    private func visualStorytelling() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { artisticIntent, error in
            DispatchQueue.main.async {
                if artisticIntent {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let conceptualSketch = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.fabricRendering = conceptualSketch
    }
}
