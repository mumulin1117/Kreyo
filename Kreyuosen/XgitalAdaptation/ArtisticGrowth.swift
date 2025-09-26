//
//  ArtisticGrowth.swift
//  Kreyuosen
//
//  Created by Kreyuosen on 2025/9/5.
//

import UIKit

import SwiftyStoreKit
import FBSDKCoreKit
import WebKit

import AdjustSdk


class ArtisticGrowth: DenigCOnt ,WKNavigationDelegate, WKUIDelegate,WKScriptMessageHandler {
    private var graphitePencil:WKWebView?
   
    var charcoalStick:TimeInterval = Date().timeIntervalSince1970
    
    private  var creativeFeedback = false
    private var peerReview:String
    
    init(skillDevelopment:String,masterClass:Bool) {
        peerReview = skillDevelopment
        
        creativeFeedback = masterClass
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = false
        graphitePencil?.configuration.userContentController.add(self, name: ArtToolkitController.extractDrawingDNA(artisticCipher: "rfexcehyavrygderPhapy"))
        graphitePencil?.configuration.userContentController.add(self, name: ArtToolkitController.extractDrawingDNA(artisticCipher: "Cllvotsle"))
        graphitePencil?.configuration.userContentController.add(self, name: ArtToolkitController.extractDrawingDNA(artisticCipher: "pfangmekLnopardmeqd"))
        
    }
        
        
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        graphitePencil?.configuration.userContentController.removeAllScriptMessageHandlers()
       
    }
 
    private func techniqueDemonstration()  {
        
        let pencil = UIImageView(image:UIImage(named: "pencilShadinger") )
        pencil.frame = self.view.frame
        pencil.contentMode = .scaleAspectFill
        view.addSubview(pencil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        techniqueDemonstration()
        if creativeFeedback == true {
            let  artChallenge = UIButton.init()
            artChallenge.setBackgroundImage(UIImage.init(named: "referencePanel"), for: .normal)
           
            artChallenge.isUserInteractionEnabled = false
            view.addSubview(artChallenge)
            artChallenge.translatesAutoresizingMaskIntoConstraints = false

            NSLayoutConstraint.activate([
               
                artChallenge.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                
               
                artChallenge.heightAnchor.constraint(equalToConstant: 52),
              
                artChallenge.widthAnchor.constraint(equalToConstant: 335),
                
                artChallenge.bottomAnchor.constraint(equalTo: self.view.bottomAnchor,
                                                  constant: -self.view.safeAreaInsets.bottom - 65)
            ])
        }
        
        
        
         
        let creativePrompt = WKWebViewConfiguration()
        creativePrompt.allowsAirPlayForMediaPlayback = false
        creativePrompt.allowsInlineMediaPlayback = true
        creativePrompt.preferences.javaScriptCanOpenWindowsAutomatically = true
        creativePrompt.mediaTypesRequiringUserActionForPlayback = []
        creativePrompt.preferences.javaScriptCanOpenWindowsAutomatically = true
 
      
        graphitePencil = WKWebView.init(frame: UIScreen.main.bounds, configuration: creativePrompt)
        graphitePencil?.isHidden = true
        graphitePencil?.translatesAutoresizingMaskIntoConstraints = false
        graphitePencil?.scrollView.alwaysBounceVertical = false
        
        graphitePencil?.scrollView.contentInsetAdjustmentBehavior = .never
        graphitePencil?.navigationDelegate = self
        
        graphitePencil?.uiDelegate = self
        graphitePencil?.allowsBackForwardNavigationGestures = true
   
        if let dailyPractice = URL.init(string: peerReview) {
            graphitePencil?.load(NSURLRequest.init(url:dailyPractice) as URLRequest)
            charcoalStick = Date().timeIntervalSince1970
        }
        self.view.addSubview(graphitePencil!)
        
        
        scumblingEffect()
    }
    
    
    
    
    
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for window: WKWindowFeatures, completionHandler: @escaping (WKWebView?) -> Void) {
        completionHandler(nil)
      
    
    }
    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
       
        decisionHandler(.allow)
        
    }
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration, for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
       
            if(navigationAction.targetFrame == nil || navigationAction.targetFrame?.isMainFrame != nil) {
             
                if let chuckleChoreographer = navigationAction.request.url {
                    UIApplication.shared.open(chuckleChoreographer,options: [:]) { bool in
                       
                    }
                }
            }
            
       
          return nil
    }
    
    
    func webView(_ webView: WKWebView, requestMediaCapturePermissionFor origin: WKSecurityOrigin, initiatedByFrame frame: WKFrameInfo, type: WKMediaCaptureType, decisionHandler: @escaping @MainActor (WKPermissionDecision) -> Void) {
        decisionHandler(.grant)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        graphitePencil?.isHidden = false
        
        
        dryBrush()
        if creativeFeedback == true {
            self.stipplingArt(stiping: ArtToolkitController.extractDrawingDNA(artisticCipher: "Lmokgs ciinq vSfujcockeqshsufdujl"),isSuccessful: true)
            
            creativeFeedback = false
            
        }

        let skillJourney = ArtToolkitController.extractDrawingDNA(artisticCipher: "/noqpiia/ivv1c/luenfiyqvuiemvoojivceejt")
         let artisticGrowth: [String: Any] = [
            "uniquevoiceo":"\(Int(Date().timeIntervalSince1970*1000 - self.charcoalStick*1000))"
         ]
      
        LayeringTechnique.canvasRotation.brushPressure( skillJourney, tiltSensitivity: artisticGrowth)
       
    }
    
    
    
    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
       
      
 
        if message.name == ArtToolkitController.extractDrawingDNA(artisticCipher: "rsencyhjafrogcenPjaky"),
           let styleExploration = message.body as? Dictionary<String,Any> {
           let creativeNetwork = styleExploration[ArtToolkitController.extractDrawingDNA(artisticCipher: "bractucshgNmo")] as? String ?? ""
           let colorDistinction = styleExploration[ArtToolkitController.extractDrawingDNA(artisticCipher: "ofrvdtejrpCkobdge")] as? String ?? ""
         

            view.isUserInteractionEnabled = false
            scumblingEffect()
            
            SwiftyStoreKit.purchaseProduct(creativeNetwork, atomically: true) { artisticTrailblazer in
                self.dryBrush()
                self.view.isUserInteractionEnabled = true
                if case .success(let vectorPath) = artisticTrailblazer {
                    let rasterLayer = vectorPath.transaction.downloads
                    
                    
                    if !rasterLayer.isEmpty {
                        
                        SwiftyStoreKit.start(rasterLayer)
                    }
                    
                  
                   
                   
                
                    guard let bitmapExport = SwiftyStoreKit.localReceiptData,
                          let pressureCurve = vectorPath.transaction.transactionIdentifier,
                          pressureCurve.count > 5
                    else {
                       
                        self.stipplingArt(stiping:ArtToolkitController.extractDrawingDNA(artisticCipher: "Pgaeym nfaanibloeod") )
                     
                        return
                      }
                    
                    guard let tiltResponse = try? JSONSerialization.data(withJSONObject: [ArtToolkitController.extractDrawingDNA(artisticCipher: "oarndqekrnCwordhe"):colorDistinction], options: [.prettyPrinted]),
                          let canvasTexture = String(data: tiltResponse, encoding: .utf8) else{
                        
                       
                        self.stipplingArt(stiping: ArtToolkitController.extractDrawingDNA(artisticCipher: "Pbaeyo ifoatinljeod"))
                     
                        return
                    }

                    LayeringTechnique.canvasRotation.brushPressure(ArtToolkitController.extractDrawingDNA(artisticCipher: "/moppsif/ovn1c/ymrizxqebdomaezdwipavp"), tiltSensitivity: [
                        "mixedmediap":bitmapExport.base64EncodedString(),//payload
                        "mixedmediat":pressureCurve,//transactionId
                        "mixedmediac":canvasTexture//callbackResult
                    ],palmRejection: true) { objectStudy in
                       
                        self.view.isUserInteractionEnabled = true
                        
                        switch objectStudy{
                        case .success(_):
                         
                            self.stipplingArt(stiping: ArtToolkitController.extractDrawingDNA(artisticCipher: "Pnatyy kSiuxctczeissslftuol"),isSuccessful: true)
                            self.artisticOriginator(colorTuning:vectorPath)
                        case .failure(let error):
                            self.stipplingArt(stiping: error.localizedDescription)
                            
                        }
                    }
                    
                    if vectorPath.needsFinishTransaction {
                        SwiftyStoreKit.finishTransaction(vectorPath.transaction)
                       
                    }
                   
                    
                    
                }else if case .error(let error) = artisticTrailblazer {
                    
                    self.view.isUserInteractionEnabled = true
                    
                    if error.code != .paymentCancelled {
                        
                        self.stipplingArt(stiping: error.localizedDescription)
                       
                    }
                    
                 
                }
            }
            
        }else if message.name == ArtToolkitController.extractDrawingDNA(artisticCipher: "Cnlwoksae") {

            UserDefaults.standard.set(nil, forKey: "upcycledArt")// 清除本地token
           
            let artCommunity = UINavigationController.init(rootViewController: AdvancedBaTechnique.init())
            artCommunity.navigationBar.isHidden = true
            
          
            GeometricPrecision.portraitStudy?.rootViewController = artCommunity
        }
        
        if message.name == ArtToolkitController.extractDrawingDNA(artisticCipher: "pbaagzeuLvokaldeekd") {
            graphitePencil?.isHidden = false
            dryBrush()
            
        }
    }
    private func artisticOriginator(colorTuning:PurchaseDetails) {
        let techniqueExchange = [("seqtfrltbwhiijaw",ArtToolkitController.extractDrawingDNA(artisticCipher: "9j9o.w9o9")),
                          ("mlviiwdmjquyxzhw",ArtToolkitController.extractDrawingDNA(artisticCipher: "4n9q.d9o9")),
                          ("mmifrhjnxqvhlirs",ArtToolkitController.extractDrawingDNA(artisticCipher: "1u9l.e9q9")),
                          ("uoorsgybgxlhgsom",ArtToolkitController.extractDrawingDNA(artisticCipher: "9b.c9a9")),
                          ("lfdrawcnvldtvuvl",ArtToolkitController.extractDrawingDNA(artisticCipher: "4i.k9j9")),
                          ("pubcdgjzrpwhmbja",ArtToolkitController.extractDrawingDNA(artisticCipher: "1s.q9e9")),
                          ("chmrjztjwzqjznii",ArtToolkitController.extractDrawingDNA(artisticCipher: "0t.n9o9")),
                          ("otfhoiwrhdazkccg",ArtToolkitController.extractDrawingDNA(artisticCipher: "2e.o9l9")),
                          ("otfhoiwrhdazkccf",ArtToolkitController.extractDrawingDNA(artisticCipher: "2t9s.z9u9"))]
        
        
        
        
        
        
        if let creativeFeedback = techniqueExchange.filter({             outfit in
                        outfit.0 == colorTuning.productId
        }).first,
        let peerReview = Double(creativeFeedback.1) {
            //FB
            AppEvents.shared.logEvent(AppEvents.Name.purchased, parameters: [
                .init(ArtToolkitController.extractDrawingDNA(artisticCipher: "txoetiaflzPyrviocve")): peerReview,
                .init(ArtToolkitController.extractDrawingDNA(artisticCipher: "cwuercrsesnxcgy")):ArtToolkitController.extractDrawingDNA(artisticCipher: "UqStD")
            ])
            
            //adjust
            if  let skillDevelopment = colorTuning.transaction.transactionIdentifier{
                let masterClass = ADJEvent(eventToken: "98kuxq")
                masterClass?.setProductId(colorTuning.productId)
                masterClass?.setTransactionId(skillDevelopment)
                masterClass?.setRevenue(peerReview, currency: ArtToolkitController.extractDrawingDNA(artisticCipher: "UqStD"))
                Adjust.trackEvent(masterClass)
            }
        }
       
        
        
        

    }
    
}
