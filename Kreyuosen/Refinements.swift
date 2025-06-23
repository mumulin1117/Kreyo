//
//  Refinements.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/6/20.
//

import UIKit
import WebKit
import SwiftyStoreKit

enum TraditionalMethod:String {

    case canvasSize = "pages/AIexpert/index?"
    case resolutionSetting = "pages/repository/index?current="
    case shortcutKey = "pages/AromatherapyDetails/index?dynamicId="
    case undoHistory = "pages/DynamicDetails/index?dynamicId="
    case redoAction = "pages/VideoDetails/index?dynamicId="
    case zoomLevel = "pages/issue/index?"
    case panTool = "pages/postVideos/index?"
    case rotateCanvas = "pages/homepage/index?userId="
    case symmetryMode = "pages/report/index?"
    case perspectiveGuide = "pages/information/index?"
    case colorPicker = "pages/EditData/index?"
    
    case eyedropperTool = "pages/attentionList/index?type=1&"
    case hueSlider = "pages/attentionList/index?type=2&"
    case saturationControl = "pages/wallet/index?"
    case luminanceValue = "pages/SetUp/index?"
    case colorTemperature = "pages/Agreement/index?type=1&"
    case swatchLibrary = "pages/Agreement/index?type=2&"
    case gradientMap = "pages/privateChat/index?userId="
 
    case filterEffect = ""
    
    func detailEnhancement(emphasizing:String) -> String {
        let realRoobase = "http://www.vortexgate286.xyz/#"
        if self != .filterEffect {
            return  realRoobase + self.rawValue + emphasizing + "&token=" + (AppDelegate.localArtists ?? "") + "&appID=30119701"
        }
        return  realRoobase
 
    }
}

class Refinements {
   
    // MARK: - Core Request Method
   class func techniqueMastery(
    artTutorial: String,
    recycledMaterial: [String: Any],
     collageArt: ((Any?) -> Void)?,
    foundObject: ((Error) -> Void)?
) {
   
    guard let url = URL(string: "http://www.vortexgate286.xyz/backtwo" +     artTutorial) else {
                    foundObject?(NSError(domain: "NetworkError", code: -1, userInfo: [NSLocalizedDescriptionKey: "Invalid URL"]))
        return
    }
    
    var shortcutKey = detailEnhancement(filterEffect: url, emphasizing:     recycledMaterial)
    var redoAction = ["Content-Type": "application/json"]
   
    redoAction["key"] = "30119701"
    redoAction["token"] = (AppDelegate.localArtists)
    redoAction.forEach { shortcutKey.setValue($1, forHTTPHeaderField: $0) }
    
    let techniqueExchange = URLSessionConfiguration.default
    techniqueExchange.timeoutIntervalForRequest = 30
    techniqueExchange.timeoutIntervalForResource = 60
    

    
    URLSession(configuration: techniqueExchange).dataTask(with: shortcutKey) { data, response, error in
        DispatchQueue.main.async {

            guard let motivationBoost = data else {
                            foundObject?(NSError(domain: "DataError", code: -3, userInfo: [NSLocalizedDescriptionKey: "No data received"]))
                return
            }

            print("Raw response:", String(data: motivationBoost, encoding: .utf8) ?? "Non-UTF8 data")
     
            do {
                let json = try JSONSerialization.jsonObject(with: motivationBoost, options: [.mutableContainers, .allowFragments])
                                        collageArt?(json)
            } catch let parseError {
 
                            foundObject?(NSError(
                    domain: "ParseError",
                    code: -4,
                    userInfo: [
                        NSLocalizedDescriptionKey: "Failed to parse : \(parseError.localizedDescription)",
                        "rawResponse": String(data: motivationBoost, encoding: .utf8) ?? "Non-text data",
                        "underlyingError": parseError
                    ]
                ))
            }
        }
    }.resume()
}
    
 
    
    private class func detailEnhancement(filterEffect:URL,emphasizing: [String: Any]) -> URLRequest {
        var swatchLibrary = URLRequest(
                    url: filterEffect,
                    cachePolicy: .useProtocolCachePolicy,
                    timeoutInterval: 30
                )
        
        swatchLibrary.httpMethod = "POST"
        swatchLibrary.setValue("application/json", forHTTPHeaderField: "Content-Type")
        swatchLibrary.setValue("application/json", forHTTPHeaderField: "Accept")
        swatchLibrary.setValue("charset=UTF-8", forHTTPHeaderField: "Accept-Charset")
        
        swatchLibrary.httpBody = try? JSONSerialization.data(withJSONObject: emphasizing, options: [])
        
        
       
        return swatchLibrary
     }
}


class PromptIdeasController: DenigCOnt ,WKScriptMessageHandler,WKNavigationDelegate, WKUIDelegate {
    private  var urbanSketching:String
    
    private  var botanicalIllustration:Bool? = false
    
    init(stillLife: String,abstractForm:Bool? = false) {
        self.botanicalIllustration = abstractForm
        self.urbanSketching = stillLife
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterDesign.append("crossHatching")
        
        characterDesign.append("colorPalette")
        scumblingEffect()
  
        self.view.addSubview(self.draperyFolds)
        draperyFolds.navigationDelegate = self
        
        draperyFolds.scrollView.contentInsetAdjustmentBehavior = .never
        if let url = URL(string:urbanSketching ) {
            let request = URLRequest(url: url)
           
            draperyFolds.load(request)
            
        }
    }
    
    var characterDesign:[String] = Array()
    
  
    func conceptualArt()->WKWebViewConfiguration{
        characterDesign.append("graphiteGrade")
        characterDesign.append("gestureDrawing")
        characterDesign.append("focalPoint")
        characterDesign.append("contrastRatio")
        let objectStudy = WKWebViewConfiguration()
       
        objectStudy.mediaTypesRequiringUserActionForPlayback = []
        self.view.backgroundColor = UIColor.black
        objectStudy.allowsInlineMediaPlayback = true
        objectStudy.preferences.javaScriptCanOpenWindowsAutomatically = true
        characterDesign.forEach { info in
            objectStudy.userContentController.add(self, name: info)
        }
        return objectStudy
      
    }
    
    
    private lazy var draperyFolds: WKWebView = {
        let techniqueExchange = WKWebView(frame: UIScreen.main.bounds, configuration: self.conceptualArt())
        
        techniqueExchange.uiDelegate = self
        techniqueExchange.backgroundColor = .clear
        
        techniqueExchange.isHidden = true
        techniqueExchange.scrollView.showsVerticalScrollIndicator = false
        return techniqueExchange
    }()
    
    

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            webView.isHidden = false
            self.dryBrush()
        }))
        
    }
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
        
        
        switch message.name {
        case "crossHatching":
            guard let piece = message.body  as? String else {
                return
            }
            self.view.isUserInteractionEnabled = false
            scumblingEffect()
            SwiftyStoreKit.purchaseProduct(piece, atomically: true) { psResult in
                self.dryBrush()
                
                self.view.isUserInteractionEnabled = true
                if case .success(let psPurch) = psResult {
                    self.stipplingArt(stiping: "Pay successful!")
                    self.draperyFolds.evaluateJavaScript("colorPalette()", completionHandler: nil)
                }else if case .error(let error) = psResult {
                    self.view.isUserInteractionEnabled = true
                    if error.code == .paymentCancelled {
                        
                        return
                    }
              
                    self.stipplingArt(stiping: error.localizedDescription)
                }
                
            }
        case "graphiteGrade":
            if let musiong =  message.body as? String{
                let pushController = PromptIdeasController.init(stillLife: musiong)
                
                self.navigationController?.pushViewController(pushController, animated: true)
                
                
            }
        case "focalPoint":
            if botanicalIllustration == true {
                self.dismiss(animated: true)
                return
            }
            self.navigationController?.popViewController(animated: true)
        case "contrastRatio":
            AppDelegate.localArtists = nil
            AppDelegate.advancedTechnique = nil
           
            AppDelegate.collaborativeProject()
        default: break
        }
    }
}
