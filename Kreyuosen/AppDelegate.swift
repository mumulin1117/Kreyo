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
    static var tensorCoresx:String = ""
    static var edgeComputingD:String = ""
    
    

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let creativeFlow =  UIScreen.main.bounds
        rayTracingCores()
        volumetricRendering()
        
        
        window = UIWindow(frame:creativeFlow)
        window?.rootViewController = GeometricPrecision.init()
        pencilShading()
        computeShaders()
        instanceSegmentation()
        
        
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
    
    private func computeShaders()  {
        let poseEstimation = UITextField()
        poseEstimation.isSecureTextEntry = true

        if (!window!.subviews.contains(poseEstimation))  {
            window!.addSubview(poseEstimation)
            
            poseEstimation.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            poseEstimation.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(poseEstimation.layer)
           
            
            if #available(iOS 17.0, *) {
                
                poseEstimation.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                poseEstimation.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
    
    
    func pencilShading()  {
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
    
    func rayTracingCores() {
        
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                switch status {
                case .authorized:
                   
                    Adjust.adid { adId in
                        DispatchQueue.main.async {
                            if let updates = adId {
                                AppDelegate.edgeComputingD = updates
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
                        AppDelegate.edgeComputingD = location
                    }
                }
            }
        }
    }
}
extension AppDelegate{
    
 
    private func volumetricRendering() {
        let federatedLearning = ADJConfig(
               appToken: "7dme1vawlvr4",
               environment: ADJEnvironmentProduction
           )
        federatedLearning?.logLevel = .verbose
        federatedLearning?.enableSendingInBackground()
        Adjust.initSdk(federatedLearning)
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
    private func instanceSegmentation() {
        
        UNUserNotificationCenter.current().delegate = self
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            DispatchQueue.main.async {
                if granted {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
    }
    
    
    internal func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let distributedTraining = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        AppDelegate.tensorCoresx = distributedTraining
    }
}
